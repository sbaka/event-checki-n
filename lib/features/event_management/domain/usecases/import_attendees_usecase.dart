import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../entities/attendee.dart';
import '../repositories/attendee_repository.dart';

@injectable
class ImportAttendeesUseCase {
  final AttendeeRepository _repository;

  ImportAttendeesUseCase(this._repository);

  Future<Either<Failure, List<Attendee>>> call(String eventId, List<Map<String, dynamic>> csvData) async {
    return _repository.importAttendeesFromCsv(eventId, csvData);
  }
}