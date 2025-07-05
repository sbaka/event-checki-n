import 'package:dartz/dartz.dart';
import 'package:event_check_in/features/event_management/domain/entities/check_in.dart';
import 'package:event_check_in/features/event_management/domain/entities/attendee.dart';
import 'package:event_check_in/core/errors/failures.dart';

abstract class CheckInRepository {
  Future<Either<Failure, CheckIn>> checkInAttendee(
      String attendeeId, String eventId, CheckInMethod method);
  Future<Either<Failure, Attendee?>> validateQrCode(String qrCode);
  Future<Either<Failure, List<CheckIn>>> getCheckInsByEvent(String eventId);
  Future<Either<Failure, CheckIn?>> getCheckInByAttendee(String attendeeId);
  Future<Either<Failure, bool>> isAttendeeCheckedIn(String attendeeId);
  Future<Either<Failure, List<CheckIn>>> getOfflineCheckIns();
  Future<Either<Failure, void>> syncCheckIns();
}
