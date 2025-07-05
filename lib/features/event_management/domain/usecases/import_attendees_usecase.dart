import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:event_check_in/core/errors/failures.dart';
import 'package:event_check_in/features/event_management/domain/entities/attendee.dart';
import 'package:event_check_in/features/event_management/domain/repositories/attendee_repository.dart';

@injectable
class ImportAttendeesUseCase {

  ImportAttendeesUseCase(this._repository);
  final AttendeeRepository _repository;

  Future<Either<Failure, List<Attendee>>> call(String eventId, List<Map<String, dynamic>> csvData) async {
    return _repository.importAttendeesFromCsv(eventId, csvData);
  }
}