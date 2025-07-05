import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../../../event_management/domain/entities/check_in.dart';
import '../repositories/check_in_repository.dart';

@injectable
class CheckInAttendeeUseCase {
  final CheckInRepository _repository;

  CheckInAttendeeUseCase(this._repository);

  Future<Either<Failure, CheckIn>> call(String attendeeId, String eventId, CheckInMethod method) async {
    return _repository.checkInAttendee(attendeeId, eventId, method);
  }
}