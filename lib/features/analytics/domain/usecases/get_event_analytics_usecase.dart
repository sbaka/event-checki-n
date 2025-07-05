import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../entities/event_analytics.dart';
import '../repositories/analytics_repository.dart';

@injectable
class GetEventAnalyticsUseCase {
  final AnalyticsRepository _repository;

  GetEventAnalyticsUseCase(this._repository);

  Future<Either<Failure, EventAnalytics>> call(String eventId) async {
    return _repository.getEventAnalytics(eventId);
  }
}