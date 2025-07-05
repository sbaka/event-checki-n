import 'package:dartz/dartz.dart';
import 'package:event_check_in/features/analytics/domain/entities/event_analytics.dart';
import 'package:event_check_in/core/errors/failures.dart';

abstract class AnalyticsRepository {
  Future<Either<Failure, EventAnalytics>> getEventAnalytics(String eventId);
  Future<Either<Failure, Map<String, int>>> getCheckInsByTimeRange(
      String eventId, DateTime start, DateTime end);
  Future<Either<Failure, List<Map<String, dynamic>>>> getTopCheckInHours(
      String eventId);
}
