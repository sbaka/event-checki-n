import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:event_check_in/core/errors/failures.dart';
import 'package:event_check_in/features/event_management/domain/repositories/event_repository.dart';

@injectable
class DeleteEventUseCase {
  DeleteEventUseCase(this._repository);
  final EventRepository _repository;

  Future<Either<Failure, void>> call(String eventId) async {
    return _repository.deleteEvent(eventId);
  }
}
