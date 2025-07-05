import 'package:injectable/injectable.dart';
import 'package:event_check_in/core/database/database.dart';

abstract class EventLocalDataSource {
  Future<List<EventData>> getAllEvents();
  Future<EventData?> getEventById(String id);
  Future<void> insertEvent(EventsCompanion event);
  Future<void> updateEvent(EventsCompanion event);
  Future<void> deleteEvent(String id);
  Future<List<EventData>> searchEvents(String query);
  Future<List<EventData>> getEventsByStatus(String status);
}

@Injectable(as: EventLocalDataSource)
class EventLocalDataSourceImpl implements EventLocalDataSource {
  EventLocalDataSourceImpl(this._database);
  final AppDatabase _database;

  @override
  Future<List<EventData>> getAllEvents() async {
    return _database.getAllEvents();
  }

  @override
  Future<EventData?> getEventById(String id) async {
    return _database.getEventById(id);
  }

  @override
  Future<void> insertEvent(EventsCompanion event) async {
    await _database.insertEvent(event);
  }

  @override
  Future<void> updateEvent(EventsCompanion event) async {
    await _database.updateEvent(event);
  }

  @override
  Future<void> deleteEvent(String id) async {
    await _database.deleteEvent(id);
  }

  @override
  Future<List<EventData>> searchEvents(String query) async {
    final events = await _database.getAllEvents();
    return events
        .where(
          (event) =>
              event.name.toLowerCase().contains(query.toLowerCase()) ||
              event.description.toLowerCase().contains(query.toLowerCase()),
        )
        .toList();
  }

  @override
  Future<List<EventData>> getEventsByStatus(String status) async {
    final events = await _database.getAllEvents();
    return events.where((event) => event.status == status).toList();
  }
}
