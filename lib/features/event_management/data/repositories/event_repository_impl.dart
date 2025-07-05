import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';
import 'package:drift/drift.dart';
import 'package:event_check_in/core/errors/failures.dart';
import 'package:event_check_in/core/database/database.dart';
import 'package:event_check_in/features/event_management/domain/entities/event.dart';
import 'package:event_check_in/features/event_management/domain/repositories/event_repository.dart';

@Injectable(as: EventRepository)
class EventRepositoryImpl implements EventRepository {
  EventRepositoryImpl(this._database, this._uuid);
  final AppDatabase _database;
  final Uuid _uuid;

  @override
  Future<Either<Failure, List<Event>>> getAllEvents() async {
    try {
      final events = await _database.getAllEvents();
      return Right(events.map(_mapToEntity).toList());
    } catch (e) {
      return Left(LocalFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Event>> getEventById(String id) async {
    try {
      final event = await _database.getEventById(id);
      if (event == null) {
        return const Left(NotFoundFailure('Event not found'));
      }
      return Right(_mapToEntity(event));
    } catch (e) {
      return Left(LocalFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Event>> createEvent(Event event) async {
    try {
      final eventToCreate = event.copyWith(
        id: _uuid.v4(),
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      );

      final companion = _mapToCompanion(eventToCreate);
      await _database.insertEvent(companion);

      return Right(eventToCreate);
    } catch (e) {
      return Left(LocalFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Event>> updateEvent(Event event) async {
    try {
      final eventToUpdate = event.copyWith(
        updatedAt: DateTime.now(),
      );

      final companion = _mapToCompanion(eventToUpdate);
      await _database.updateEvent(companion);

      return Right(eventToUpdate);
    } catch (e) {
      return Left(LocalFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> deleteEvent(String id) async {
    try {
      await _database.deleteEvent(id);
      return const Right(null);
    } catch (e) {
      return Left(LocalFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Event>>> searchEvents(String query) async {
    try {
      final events = await _database.getAllEvents();
      final filtered = events
          .where(
            (event) =>
                event.name.toLowerCase().contains(query.toLowerCase()) ||
                event.description.toLowerCase().contains(query.toLowerCase()),
          )
          .toList();
      return Right(filtered.map(_mapToEntity).toList());
    } catch (e) {
      return Left(LocalFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Event>>> getEventsByStatus(
    EventStatus status,
  ) async {
    try {
      final events = await _database.getAllEvents();
      final filtered =
          events.where((event) => event.status == status.toString()).toList();
      return Right(filtered.map(_mapToEntity).toList());
    } catch (e) {
      return Left(LocalFailure(e.toString()));
    }
  }

  Event _mapToEntity(EventData data) {
    return Event(
      id: data.id,
      name: data.name,
      description: data.description,
      startDate: data.startDate,
      endDate: data.endDate,
      location: data.location,
      organizerId: data.organizerId,
      status: _parseEventStatus(data.status),
      isActive: data.isActive,
      maxAttendees: data.maxAttendees,
      allowCheckIn: data.allowCheckIn,
      requiresApproval: data.requiresApproval,
      createdAt: data.createdAt,
      updatedAt: data.updatedAt,
      imageUrl: data.imageUrl,
      contactEmail: data.contactEmail,
      contactPhone: data.contactPhone,
      metadata: data.metadata != null ? {} : null,
    );
  }

  EventsCompanion _mapToCompanion(Event event) {
    return EventsCompanion.insert(
      id: event.id,
      name: event.name,
      description: event.description,
      startDate: event.startDate,
      endDate: event.endDate,
      location: event.location,
      organizerId: event.organizerId,
      status: event.status.toString(),
      isActive: event.isActive,
      maxAttendees: event.maxAttendees,
      allowCheckIn: event.allowCheckIn,
      requiresApproval: event.requiresApproval,
      createdAt: event.createdAt,
      updatedAt: event.updatedAt,
      imageUrl: Value(event.imageUrl),
      contactEmail: Value(event.contactEmail),
      contactPhone: Value(event.contactPhone),
      metadata: Value(event.metadata?.toString()),
    );
  }

  EventStatus _parseEventStatus(String status) {
    switch (status) {
      case 'EventStatus.draft':
        return const EventStatus.draft();
      case 'EventStatus.published':
        return const EventStatus.published();
      case 'EventStatus.active':
        return const EventStatus.active();
      case 'EventStatus.completed':
        return const EventStatus.completed();
      case 'EventStatus.cancelled':
        return const EventStatus.cancelled();
      default:
        return const EventStatus.draft();
    }
  }
}
