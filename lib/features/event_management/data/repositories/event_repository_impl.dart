import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';
import 'package:drift/drift.dart';
import 'package:event_check_in/core/errors/failures.dart';
import 'package:event_check_in/core/database/database.dart';
import 'package:event_check_in/core/network/connectivity_service.dart';
import 'package:event_check_in/features/event_management/domain/entities/event.dart';
import 'package:event_check_in/features/event_management/domain/repositories/event_repository.dart';
import 'package:event_check_in/features/event_management/data/datasources/event_remote_data_source.dart';

@Injectable(as: EventRepository)
class EventRepositoryImpl implements EventRepository {
  EventRepositoryImpl(
    this._database,
    this._uuid,
    this._remoteDataSource,
    this._connectivityService,
  );
  final AppDatabase _database;
  final Uuid _uuid;
  final EventRemoteDataSource _remoteDataSource;
  final ConnectivityService _connectivityService;

  @override
  Future<Either<Failure, List<Event>>> getAllEvents() async {
    try {
      // Try to fetch from remote first if connected
      if (await _isConnected()) {
        try {
          final remoteEvents = await _remoteDataSource.getAllEvents();
          // Cache events locally
          await _cacheEvents(remoteEvents);
          return Right(remoteEvents);
        } catch (e) {
          // Fall back to local data if remote fails
        }
      }
      
      // Get from local database
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

      // Try to create on remote first if connected
      if (await _isConnected()) {
        try {
          final remoteEvent = await _remoteDataSource.createEvent(eventToCreate);
          // Cache the created event locally
          await _cacheEvent(remoteEvent);
          return Right(remoteEvent);
        } catch (e) {
          // Fall back to local creation if remote fails
        }
      }

      // Create locally
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

      // Try to update on remote first if connected
      if (await _isConnected()) {
        try {
          final remoteEvent = await _remoteDataSource.updateEvent(eventToUpdate);
          // Update the cache
          await _cacheEvent(remoteEvent);
          return Right(remoteEvent);
        } catch (e) {
          // Fall back to local update if remote fails
        }
      }

      // Update locally
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
      // Try to delete on remote first if connected
      if (await _isConnected()) {
        try {
          await _remoteDataSource.deleteEvent(id);
          // Delete from local cache
          await _database.deleteEvent(id);
          return const Right(null);
        } catch (e) {
          // Fall back to local delete if remote fails
        }
      }

      // Delete locally
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
      // Try to fetch from remote first if connected
      if (await _isConnected()) {
        try {
          final remoteEvents = await _remoteDataSource.getEventsByStatus(status);
          // Cache events locally
          await _cacheEvents(remoteEvents);
          return Right(remoteEvents);
        } catch (e) {
          // Fall back to local data if remote fails
        }
      }
      
      // Get from local database and filter
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

  Future<bool> _isConnected() async {
    return await _connectivityService.checkConnection();
  }

  Future<void> _cacheEvents(List<Event> events) async {
    for (final event in events) {
      await _cacheEvent(event);
    }
  }

  Future<void> _cacheEvent(Event event) async {
    try {
      final companion = _mapToCompanion(event);
      await _database.insertEvent(companion);
    } catch (e) {
      // If insert fails due to existing ID, try update
      try {
        final companion = _mapToCompanion(event);
        await _database.updateEvent(companion);
      } catch (e) {
        // Ignore cache errors
      }
    }
  }
}
