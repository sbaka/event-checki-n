import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:event_check_in/core/errors/failures.dart';
import 'package:event_check_in/features/event_management/domain/entities/event.dart';
import 'package:event_check_in/features/event_management/domain/repositories/event_repository.dart';

@injectable
class CreateEventUseCase {
  CreateEventUseCase(this._repository);
  final EventRepository _repository;

  Future<Either<Failure, Event>> call(Event event) async {
    return _repository.createEvent(event);
  }
}
