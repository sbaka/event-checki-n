import 'package:injectable/injectable.dart';
import 'package:event_check_in/core/database/database.dart';

abstract class AttendeeLocalDataSource {
  Future<List<AttendeeData>> getAllAttendees();
  Future<List<AttendeeData>> getAttendeesByEvent(String eventId);
  Future<AttendeeData?> getAttendeeById(String id);
  Future<void> insertAttendee(AttendeesCompanion attendee);
  Future<void> insertAttendees(List<AttendeesCompanion> attendees);
  Future<void> updateAttendee(AttendeesCompanion attendee);
  Future<void> deleteAttendee(String id);
  Future<int> getAttendeeCount(String eventId);
}

@Injectable(as: AttendeeLocalDataSource)
class AttendeeLocalDataSourceImpl implements AttendeeLocalDataSource {
  AttendeeLocalDataSourceImpl(this._database);
  final AppDatabase _database;

  @override
  Future<List<AttendeeData>> getAllAttendees() async {
    return _database.getAllAttendees();
  }

  @override
  Future<List<AttendeeData>> getAttendeesByEvent(String eventId) async {
    return _database.getAttendeesByEvent(eventId);
  }

  @override
  Future<AttendeeData?> getAttendeeById(String id) async {
    return _database.getAttendeeById(id);
  }

  @override
  Future<void> insertAttendee(AttendeesCompanion attendee) async {
    await _database.insertAttendee(attendee);
  }

  @override
  Future<void> insertAttendees(List<AttendeesCompanion> attendees) async {
    await _database.insertAttendees(attendees);
  }

  @override
  Future<void> updateAttendee(AttendeesCompanion attendee) async {
    await _database.updateAttendee(attendee);
  }

  @override
  Future<void> deleteAttendee(String id) async {
    await _database.deleteAttendee(id);
  }

  @override
  Future<int> getAttendeeCount(String eventId) async {
    return _database.getAttendeeCount(eventId);
  }
}
