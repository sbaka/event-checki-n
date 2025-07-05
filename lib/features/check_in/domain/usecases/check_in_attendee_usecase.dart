import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:event_check_in/core/errors/failures.dart';
import 'package:event_check_in/features/event_management/domain/entities/check_in.dart';
import 'package:event_check_in/features/check_in/domain/repositories/check_in_repository.dart';

@injectable
class CheckInAttendeeUseCase {
  CheckInAttendeeUseCase(this._repository);
  final CheckInRepository _repository;

  Future<Either<Failure, CheckIn>> call(
      String attendeeId, String eventId, CheckInMethod method) async {
    return _repository.checkInAttendee(attendeeId, eventId, method);
  }
}
