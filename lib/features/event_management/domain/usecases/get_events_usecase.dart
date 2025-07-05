import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:event_check_in/core/errors/failures.dart';
import 'package:event_check_in/features/event_management/domain/entities/event.dart';
import 'package:event_check_in/features/event_management/domain/repositories/event_repository.dart';

@injectable
class GetEventsUseCase {
  GetEventsUseCase(this._repository);
  final EventRepository _repository;

  Future<Either<Failure, List<Event>>> call() async {
    return _repository.getAllEvents();
  }
}
