import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:event_check_in/core/errors/failures.dart';
import 'package:event_check_in/features/analytics/domain/entities/event_analytics.dart';
import 'package:event_check_in/features/analytics/domain/repositories/analytics_repository.dart';

@injectable
class GetEventAnalyticsUseCase {
  GetEventAnalyticsUseCase(this._repository);
  final AnalyticsRepository _repository;

  Future<Either<Failure, EventAnalytics>> call(String eventId) async {
    return _repository.getEventAnalytics(eventId);
  }
}
