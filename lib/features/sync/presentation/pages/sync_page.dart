import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SyncPage extends StatefulWidget {
  const SyncPage({super.key});

  @override
  State<SyncPage> createState() => _SyncPageState();
}

class _SyncPageState extends State<SyncPage> {
  // This would normally come from a bloc
  bool _isSyncing = false;
  final bool _isConnected = true;
  DateTime? _lastSyncTime;

  final _syncItems = [
    _SyncItem(
      name: 'Events',
      status: SyncStatus.synced,
      count: 5,
      lastSync: DateTime.now().subtract(const Duration(hours: 2)),
    ),
    _SyncItem(
      name: 'Attendees',
      status: SyncStatus.synced,
      count: 1250,
      lastSync: DateTime.now().subtract(const Duration(hours: 2)),
    ),
    _SyncItem(
      name: 'Check-ins',
      status: SyncStatus.pendingUpload,
      count: 45,
      lastSync: DateTime.now().subtract(const Duration(hours: 4)),
    ),
    _SyncItem(
      name: 'User Profile',
      status: SyncStatus.synced,
      count: 1,
      lastSync: DateTime.now().subtract(const Duration(hours: 2)),
    ),
  ];

  void _startSync() {
    setState(() {
      _isSyncing = true;
    });

    // Simulate sync process
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        _isSyncing = false;
        _lastSyncTime = DateTime.now();

        // Update sync status
        for (final item in _syncItems) {
          if (item.status == SyncStatus.pendingUpload) {
            item.status = SyncStatus.synced;
            item.lastSync = _lastSyncTime;
          }
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Synchronization'),
      ),
      body: Column(
        children: [
          // Connection status and sync button
          _buildSyncHeader(),

          // Sync items list
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: _syncItems.length,
              itemBuilder: (context, index) {
                final item = _syncItems[index];
                return _buildSyncItemCard(item);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSyncHeader() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          // Connection status
          Row(
            children: [
              Icon(
                _isConnected ? Icons.wifi : Icons.wifi_off,
                color: _isConnected ? Colors.green : Colors.red,
              ),
              const SizedBox(width: 8),
              Text(
                _isConnected ? 'Online' : 'Offline',
                style: TextStyle(
                  color: _isConnected ? Colors.green : Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              if (_lastSyncTime != null)
                Text(
                  'Last sync: ${_formatDateTime(_lastSyncTime!)}',
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
            ],
          ),
          const SizedBox(height: 16),

          // Sync button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
              onPressed: _isConnected && !_isSyncing ? _startSync : null,
              icon: _isSyncing
                  ? const SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        color: Colors.white,
                      ),
                    )
                  : const Icon(Icons.sync),
              label: Text(_isSyncing ? 'Syncing...' : 'Sync Now'),
            ),
          ),

          // Sync info
          const SizedBox(height: 8),
          const Text(
            'Sync will upload any pending check-ins and download the latest event data.',
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildSyncItemCard(_SyncItem item) {
    final statusColor = _getSyncStatusColor(item.status);
    final statusIcon = _getSyncStatusIcon(item.status);

    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            // Status icon
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: statusColor.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(
                statusIcon,
                color: statusColor,
              ),
            ),
            const SizedBox(width: 16),

            // Item details
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Text(
                        '${item.count} items',
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(width: 16),
                      if (item.lastSync != null)
                        Text(
                          'Last: ${_formatDateTime(item.lastSync!)}',
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 14,
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),

            // Status text
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: statusColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                _getSyncStatusText(item.status),
                style: TextStyle(
                  color: statusColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _getSyncStatusText(SyncStatus status) {
    switch (status) {
      case SyncStatus.synced:
        return 'Synced';
      case SyncStatus.pendingUpload:
        return 'Pending Upload';
      case SyncStatus.pendingDownload:
        return 'Pending Download';
      case SyncStatus.error:
        return 'Error';
    }
  }

  Color _getSyncStatusColor(SyncStatus status) {
    switch (status) {
      case SyncStatus.synced:
        return Colors.green;
      case SyncStatus.pendingUpload:
        return Colors.orange;
      case SyncStatus.pendingDownload:
        return Colors.blue;
      case SyncStatus.error:
        return Colors.red;
    }
  }

  IconData _getSyncStatusIcon(SyncStatus status) {
    switch (status) {
      case SyncStatus.synced:
        return Icons.check_circle;
      case SyncStatus.pendingUpload:
        return Icons.upload;
      case SyncStatus.pendingDownload:
        return Icons.download;
      case SyncStatus.error:
        return Icons.error;
    }
  }

  String _formatDateTime(DateTime dateTime) {
    // This would normally use intl package
    return '${dateTime.hour}:${dateTime.minute.toString().padLeft(2, '0')} ${_formatDate(dateTime)}';
  }

  String _formatDate(DateTime date) {
    // This would normally use intl package
    return '${date.day}/${date.month}/${date.year}';
  }
}

class _SyncItem {
  _SyncItem({
    required this.name,
    required this.status,
    required this.count,
    this.lastSync,
  });
  final String name;
  SyncStatus status;
  final int count;
  DateTime? lastSync;
}

enum SyncStatus {
  synced,
  pendingUpload,
  pendingDownload,
  error,
}
