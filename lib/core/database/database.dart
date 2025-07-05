import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:injectable/injectable.dart';

part 'database.g.dart';

@DataClassName('EventData')
class Events extends Table {
  TextColumn get id => text()();
  TextColumn get name => text()();
  TextColumn get description => text()();
  DateTimeColumn get startDate => dateTime()();
  DateTimeColumn get endDate => dateTime()();
  TextColumn get location => text()();
  TextColumn get organizerId => text()();
  TextColumn get status => text()();
  BoolColumn get isActive => boolean()();
  IntColumn get maxAttendees => integer()();
  BoolColumn get allowCheckIn => boolean()();
  BoolColumn get requiresApproval => boolean()();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();
  TextColumn get imageUrl => text().nullable()();
  TextColumn get contactEmail => text().nullable()();
  TextColumn get contactPhone => text().nullable()();
  TextColumn get metadata => text().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('AttendeeData')
class Attendees extends Table {
  TextColumn get id => text()();
  TextColumn get eventId => text()();
  TextColumn get firstName => text()();
  TextColumn get lastName => text()();
  TextColumn get email => text()();
  TextColumn get status => text()();
  DateTimeColumn get registrationDate => dateTime()();
  TextColumn get ticketType => text()();
  TextColumn get qrCode => text()();
  BoolColumn get isVip => boolean()();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();
  TextColumn get phone => text().nullable()();
  TextColumn get company => text().nullable()();
  TextColumn get jobTitle => text().nullable()();
  TextColumn get notes => text().nullable()();
  TextColumn get customFields => text().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('CheckInData')
class CheckIns extends Table {
  TextColumn get id => text()();
  TextColumn get eventId => text()();
  TextColumn get attendeeId => text()();
  DateTimeColumn get checkInTime => dateTime()();
  TextColumn get method => text()();
  TextColumn get status => text()();
  TextColumn get deviceId => text()();
  TextColumn get operatorId => text()();
  DateTimeColumn get createdAt => dateTime()();
  TextColumn get notes => text().nullable()();
  TextColumn get metadata => text().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('TicketData')
class Tickets extends Table {
  TextColumn get id => text()();
  TextColumn get eventId => text()();
  TextColumn get name => text()();
  TextColumn get description => text()();
  RealColumn get price => real()();
  IntColumn get quantity => integer()();
  IntColumn get sold => integer()();
  BoolColumn get isActive => boolean()();
  DateTimeColumn get saleStartDate => dateTime()();
  DateTimeColumn get saleEndDate => dateTime()();
  TextColumn get type => text()();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();
  TextColumn get color => text().nullable()();
  TextColumn get metadata => text().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

@injectable
@DriftDatabase(tables: [Events, Attendees, CheckIns, Tickets])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  static QueryExecutor _openConnection() {
    return LazyDatabase(() async {
      final dbFolder = await getApplicationDocumentsDirectory();
      final file = File(p.join(dbFolder.path, 'event_check_in.db'));
      return NativeDatabase(file);
    });
  }

  Future<List<EventData>> getAllEvents() => select(events).get();
  
  Future<EventData?> getEventById(String id) => 
    (select(events)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  
  Future<int> insertEvent(EventsCompanion event) => 
    into(events).insert(event);
  
  Future<bool> updateEvent(EventsCompanion event) => 
    update(events).replace(event);
  
  Future<int> deleteEvent(String id) => 
    (delete(events)..where((tbl) => tbl.id.equals(id))).go();

  Future<List<AttendeeData>> getAttendeesByEvent(String eventId) => 
    (select(attendees)..where((tbl) => tbl.eventId.equals(eventId))).get();
  
  Future<AttendeeData?> getAttendeeById(String id) => 
    (select(attendees)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  
  Future<int> insertAttendee(AttendeesCompanion attendee) => 
    into(attendees).insert(attendee);
  
  Future<bool> updateAttendee(AttendeesCompanion attendee) => 
    update(attendees).replace(attendee);
  
  Future<int> deleteAttendee(String id) => 
    (delete(attendees)..where((tbl) => tbl.id.equals(id))).go();

  Future<List<CheckInData>> getCheckInsByEvent(String eventId) => 
    (select(checkIns)..where((tbl) => tbl.eventId.equals(eventId))).get();
  
  Future<CheckInData?> getCheckInById(String id) => 
    (select(checkIns)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  
  Future<int> insertCheckIn(CheckInsCompanion checkIn) => 
    into(checkIns).insert(checkIn);
  
  Future<bool> updateCheckIn(CheckInsCompanion checkIn) => 
    update(checkIns).replace(checkIn);

  Future<List<TicketData>> getTicketsByEvent(String eventId) => 
    (select(tickets)..where((tbl) => tbl.eventId.equals(eventId))).get();
  
  Future<TicketData?> getTicketById(String id) => 
    (select(tickets)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  
  Future<int> insertTicket(TicketsCompanion ticket) => 
    into(tickets).insert(ticket);
  
  Future<bool> updateTicket(TicketsCompanion ticket) => 
    update(tickets).replace(ticket);
  
  Future<int> deleteTicket(String id) => 
    (delete(tickets)..where((tbl) => tbl.id.equals(id))).go();

  Future<int> getEventAttendeeCount(String eventId) async {
    final result = await (selectOnly(attendees)
      ..addColumns([attendees.id.count()])
      ..where(attendees.eventId.equals(eventId)))
      .getSingle();
    return result.read(attendees.id.count()) ?? 0;
  }

  Future<int> getEventCheckedInCount(String eventId) async {
    final result = await (selectOnly(checkIns)
      ..addColumns([checkIns.id.count()])
      ..where(checkIns.eventId.equals(eventId)))
      .getSingle();
    return result.read(checkIns.id.count()) ?? 0;
  }

  Future<CheckInData?> getCheckInByAttendee(String attendeeId) => 
    (select(checkIns)..where((tbl) => tbl.attendeeId.equals(attendeeId))).getSingleOrNull();

  Future<List<CheckInData>> getAllCheckIns() => select(checkIns).get();

  Future<List<AttendeeData>> getAllAttendees() => select(attendees).get();

  Future<void> insertAttendees(List<AttendeesCompanion> attendeeList) async {
    await batch((batch) {
      batch.insertAll(attendees, attendeeList);
    });
  }

  Future<int> getAttendeeCount(String eventId) async {
    return getEventAttendeeCount(eventId);
  }
}