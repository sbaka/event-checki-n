import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../entities/event.dart';
import '../repositories/event_repository.dart';

@injectable
class UpdateEventUseCase {
  final EventRepository _repository;

  UpdateEventUseCase(this._repository);

  Future<Either<Failure, Event>> call(Event event) async {
    return await _repository.updateEvent(event);
  }
}