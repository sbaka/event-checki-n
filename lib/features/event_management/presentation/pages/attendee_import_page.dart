import 'dart:io';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:file_picker/file_picker.dart';
import 'package:csv/csv.dart';
import 'package:event_check_in/core/di/injection.dart';
import 'package:event_check_in/features/event_management/domain/usecases/import_attendees_usecase.dart';

@RoutePage()
class AttendeeImportPage extends StatefulWidget {
  const AttendeeImportPage({required this.eventId, super.key});
  final String eventId;

  @override
  State<AttendeeImportPage> createState() => _AttendeeImportPageState();
}

class _AttendeeImportPageState extends State<AttendeeImportPage> {
  File? _selectedFile;
  bool _isLoading = false;
  List<Map<String, dynamic>>? _previewData;
  final List<String> _requiredFields = ['firstName', 'lastName', 'email'];
  Map<String, String> _fieldMapping = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Import Attendees'),
        actions: [
          if (_previewData != null)
            TextButton(
              onPressed: _isLoading ? null : _importAttendees,
              child: _isLoading
                  ? const SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    )
                  : const Text('Import'),
            ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'CSV Import Instructions',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Required columns: firstName, lastName, email\n'
                      'Optional columns: phone, company, jobTitle, ticketType, isVip, notes',
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: _pickFile,
              icon: const Icon(Icons.file_upload),
              label: const Text('Select CSV File'),
            ),
            if (_selectedFile != null) ...[
              const SizedBox(height: 16),
              Text(
                'Selected: ${_selectedFile!.path.split('/').last}',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
            if (_previewData != null) ...[
              const SizedBox(height: 16),
              Text(
                'Preview (${_previewData!.length} rows)',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 8),
              Expanded(
                child: Card(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildFieldMapping(),
                        const SizedBox(height: 16),
                        _buildPreviewTable(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildFieldMapping() {
    if (_previewData == null || _previewData!.isEmpty) return Container();

    final csvColumns = _previewData!.first.keys.toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Map CSV columns to required fields:',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const SizedBox(height: 8),
        ..._requiredFields.map(
          (field) => Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Row(
              children: [
                SizedBox(
                  width: 100,
                  child: Text('$field*'),
                ),
                Expanded(
                  child: DropdownButtonFormField<String>(
                    value: _fieldMapping[field],
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      isDense: true,
                    ),
                    items: csvColumns
                        .map(
                          (column) => DropdownMenuItem(
                            value: column,
                            child: Text(column),
                          ),
                        )
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        if (value != null) {
                          _fieldMapping[field] = value;
                        }
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPreviewTable() {
    if (_previewData == null) return Container();

    final displayData = _previewData!.take(5).toList();

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        columns: _previewData!.first.keys
            .map((key) => DataColumn(label: Text(key)))
            .toList(),
        rows: displayData
            .map(
              (row) => DataRow(
                cells: row.values
                    .map((value) => DataCell(Text(value?.toString() ?? '')))
                    .toList(),
              ),
            )
            .toList(),
      ),
    );
  }

  Future<void> _pickFile() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['csv'],
    );

    if (result != null && result.files.single.path != null) {
      setState(() {
        _selectedFile = File(result.files.single.path!);
      });
      await _parseCSV();
    }
  }

  Future<void> _parseCSV() async {
    if (_selectedFile == null) return;

    try {
      final input = await _selectedFile!.readAsString();
      final csvData = const CsvToListConverter().convert(input);

      if (csvData.isEmpty) {
        _showError('CSV file is empty');
        return;
      }

      final headers = csvData.first.map((e) => e.toString()).toList();
      final rows = csvData.skip(1).map((row) {
        final rowMap = <String, dynamic>{};
        for (var i = 0; i < headers.length && i < row.length; i++) {
          rowMap[headers[i]] = row[i];
        }
        return rowMap;
      }).toList();

      setState(() {
        _previewData = rows;
        _fieldMapping = _autoMapFields(headers);
      });
    } catch (e) {
      _showError('Error parsing CSV: $e');
    }
  }

  Map<String, String> _autoMapFields(List<String> headers) {
    final mapping = <String, String>{};

    for (final required in _requiredFields) {
      final match = headers.firstWhere(
        (header) =>
            header.toLowerCase().contains(required.toLowerCase()) ||
            header
                .toLowerCase()
                .replaceAll('_', '')
                .contains(required.toLowerCase()),
        orElse: () => '',
      );
      if (match.isNotEmpty) {
        mapping[required] = match;
      }
    }

    return mapping;
  }

  Future<void> _importAttendees() async {
    if (_previewData == null) return;

    // Validate field mapping
    for (final required in _requiredFields) {
      if (!_fieldMapping.containsKey(required) ||
          _fieldMapping[required]!.isEmpty) {
        _showError('Please map all required fields: $required');
        return;
      }
    }

    setState(() => _isLoading = true);

    try {
      // Transform data using field mapping
      final transformedData = _previewData!.map((row) {
        final transformed = <String, dynamic>{};
        for (final entry in _fieldMapping.entries) {
          transformed[entry.key] = row[entry.value];
        }

        // Copy over any additional fields
        for (final entry in row.entries) {
          if (!_fieldMapping.containsValue(entry.key)) {
            transformed[entry.key] = entry.value;
          }
        }

        return transformed;
      }).toList();

      final importUseCase = getIt<ImportAttendeesUseCase>();
      final result = await importUseCase(widget.eventId, transformedData);

      result.fold(
        (failure) {
          _showError('Import failed: ${failure.message}');
        },
        (attendees) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content:
                  Text('Successfully imported ${attendees.length} attendees'),
            ),
          );
          context.router.maybePop(attendees.length);
        },
      );
    } catch (e) {
      _showError('Import failed: $e');
    } finally {
      setState(() => _isLoading = false);
    }
  }

  void _showError(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.red,
      ),
    );
  }
}
