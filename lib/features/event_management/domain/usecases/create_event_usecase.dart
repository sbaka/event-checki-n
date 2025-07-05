import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../entities/event.dart';
import '../repositories/event_repository.dart';

@injectable
class CreateEventUseCase {
  final EventRepository _repository;

  CreateEventUseCase(this._repository);

  Future<Either<Failure, Event>> call(Event event) async {
    return await _repository.createEvent(event);
  }
}