import 'package:dartz/dartz.dart';
import '../entities/event.dart';
import '../../../../core/errors/failures.dart';

abstract class EventRepository {
  Future<Either<Failure, List<Event>>> getAllEvents();
  Future<Either<Failure, Event>> getEventById(String id);
  Future<Either<Failure, Event>> createEvent(Event event);
  Future<Either<Failure, Event>> updateEvent(Event event);
  Future<Either<Failure, void>> deleteEvent(String id);
  Future<Either<Failure, List<Event>>> searchEvents(String query);
  Future<Either<Failure, List<Event>>> getEventsByStatus(EventStatus status);
}