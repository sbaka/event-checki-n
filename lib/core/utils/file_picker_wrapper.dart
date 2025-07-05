import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';

/// A wrapper for file_picker to handle platform-specific functionality
class FilePickerWrapper {
  /// Picks a single file and returns the file path
  static Future<String?> pickSingleFile({
    List<String>? allowedExtensions,
    String? dialogTitle,
  }) async {
    try {
      if (kIsWeb || Platform.isAndroid || Platform.isIOS) {
        final result = await FilePicker.platform.pickFiles(
          type: allowedExtensions != null ? FileType.custom : FileType.any,
          allowedExtensions: allowedExtensions,
          dialogTitle: dialogTitle,
        );

        return result?.files.single.path;
      } else {
        // For unsupported platforms, return null or implement alternative
        debugPrint('File picking not supported on this platform');
        return null;
      }
    } catch (e) {
      debugPrint('Error picking file: $e');
      return null;
    }
  }

  /// Picks multiple files and returns their paths
  static Future<List<String>?> pickMultipleFiles({
    List<String>? allowedExtensions,
    String? dialogTitle,
  }) async {
    try {
      if (kIsWeb || Platform.isAndroid || Platform.isIOS) {
        final result = await FilePicker.platform.pickFiles(
          type: allowedExtensions != null ? FileType.custom : FileType.any,
          allowedExtensions: allowedExtensions,
          allowMultiple: true,
          dialogTitle: dialogTitle,
        );

        if (result == null) return null;
        return result.files
            .where((file) => file.path != null)
            .map((file) => file.path!)
            .toList();
      } else {
        // For unsupported platforms, return null or implement alternative
        debugPrint('File picking not supported on this platform');
        return null;
      }
    } catch (e) {
      debugPrint('Error picking files: $e');
      return null;
    }
  }
}
