import 'package:dartz/dartz.dart';
import 'package:event_check_in/features/event_management/domain/entities/event.dart';
import 'package:event_check_in/core/errors/failures.dart';

abstract class EventRepository {
  Future<Either<Failure, List<Event>>> getAllEvents();
  Future<Either<Failure, Event>> getEventById(String id);
  Future<Either<Failure, Event>> createEvent(Event event);
  Future<Either<Failure, Event>> updateEvent(Event event);
  Future<Either<Failure, void>> deleteEvent(String id);
  Future<Either<Failure, List<Event>>> searchEvents(String query);
  Future<Either<Failure, List<Event>>> getEventsByStatus(EventStatus status);
}
