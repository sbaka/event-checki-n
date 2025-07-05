import 'package:dartz/dartz.dart';
import '../entities/attendee.dart';
import '../../../../core/errors/failures.dart';

abstract class AttendeeRepository {
  Future<Either<Failure, List<Attendee>>> getAttendeesByEvent(String eventId);
  Future<Either<Failure, Attendee>> getAttendeeById(String id);
  Future<Either<Failure, Attendee>> createAttendee(Attendee attendee);
  Future<Either<Failure, Attendee>> updateAttendee(Attendee attendee);
  Future<Either<Failure, void>> deleteAttendee(String id);
  Future<Either<Failure, List<Attendee>>> searchAttendees(String eventId, String query);
  Future<Either<Failure, List<Attendee>>> importAttendeesFromCsv(String eventId, List<Map<String, dynamic>> csvData);
  Future<Either<Failure, int>> getAttendeeCount(String eventId);
}