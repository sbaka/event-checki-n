import 'dart:convert';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';

@singleton
class HiveStorage {
  late Box<String> _box;
  static const String _boxName = 'event_check_in_box';

  @factoryMethod
  static Future<HiveStorage> init() async {
    final instance = HiveStorage();
    await instance._initHive();
    return instance;
  }

  Future<void> _initHive() async {
    final appDocumentDir = await getApplicationDocumentsDirectory();
    await Hive.initFlutter(appDocumentDir.path);
    _box = await Hive.openBox<String>(_boxName);
  }

  // Generic methods
  Future<void> saveData<T>(String key, T value) async {
    final jsonString = jsonEncode(value);
    await _box.put(key, jsonString);
  }

  T? getData<T>(String key, T Function(Map<String, dynamic> json) fromJson) {
    final jsonString = _box.get(key);
    if (jsonString == null) return null;

    try {
      final map = jsonDecode(jsonString) as Map<String, dynamic>;
      return fromJson(map);
    } catch (e) {
      return null;
    }
  }

  List<T> getListData<T>(
    String key,
    T Function(Map<String, dynamic> json) fromJson,
  ) {
    final jsonString = _box.get(key);
    if (jsonString == null) return [];

    try {
      final list = jsonDecode(jsonString) as List;
      return list
          .map((item) => fromJson(item as Map<String, dynamic>))
          .toList();
    } catch (e) {
      return [];
    }
  }

  Future<void> removeData(String key) async {
    await _box.delete(key);
  }

  Future<void> clearAll() async {
    await _box.clear();
  }

  // Specific methods for event check-in app

  // Events
  static const String _eventsKey = 'events';

  Future<void> saveEvents<T>(List<T> events) async {
    final jsonList = events.map(jsonEncode).toList();
    await _box.put(_eventsKey, jsonEncode(jsonList));
  }

  // Attendees
  static const String _attendeesKey = 'attendees';

  Future<void> saveAttendees<T>(List<T> attendees) async {
    final jsonList = attendees.map(jsonEncode).toList();
    await _box.put(_attendeesKey, jsonEncode(jsonList));
  }

  // Check-ins
  static const String _checkInsKey = 'check_ins';

  Future<void> saveCheckIns<T>(List<T> checkIns) async {
    final jsonList = checkIns.map(jsonEncode).toList();
    await _box.put(_checkInsKey, jsonEncode(jsonList));
  }

  Future<void> addCheckIn<T>(T checkIn) async {
    final jsonString = _box.get(_checkInsKey);
    var checkIns = <dynamic>[];

    if (jsonString != null) {
      try {
        checkIns = jsonDecode(jsonString) as List;
      } catch (e) {
        checkIns = [];
      }
    }

    checkIns.add(jsonEncode(checkIn));
    await _box.put(_checkInsKey, jsonEncode(checkIns));
  }

  // Sync status
  static const String _syncStatusKey = 'sync_status';

  Future<void> saveSyncStatus(Map<String, dynamic> status) async {
    await _box.put(_syncStatusKey, jsonEncode(status));
  }

  Map<String, dynamic>? getSyncStatus() {
    final jsonString = _box.get(_syncStatusKey);
    if (jsonString == null) return null;

    try {
      return jsonDecode(jsonString) as Map<String, dynamic>;
    } catch (e) {
      return null;
    }
  }
}
