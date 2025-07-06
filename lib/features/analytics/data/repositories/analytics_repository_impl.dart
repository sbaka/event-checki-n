import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:event_check_in/core/errors/failures.dart';
import 'package:event_check_in/core/database/database.dart';
import 'package:event_check_in/features/event_management/domain/repositories/event_repository.dart';
import 'package:event_check_in/features/event_management/domain/repositories/attendee_repository.dart';
import 'package:event_check_in/features/analytics/domain/entities/event_analytics.dart';
import 'package:event_check_in/features/analytics/domain/repositories/analytics_repository.dart';

@Injectable(as: AnalyticsRepository)
class AnalyticsRepositoryImpl implements AnalyticsRepository {
  AnalyticsRepositoryImpl(
    this._database,
    this._eventRepository,
    this._attendeeRepository,
  );
  final AppDatabase _database;
  final EventRepository _eventRepository;
  final AttendeeRepository _attendeeRepository;

  @override
  Future<Either<Failure, EventAnalytics>> getEventAnalytics(
    String eventId,
  ) async {
    try {
      // Get event details
      final eventResult = await _eventRepository.getEventById(eventId);
      final event = eventResult.fold(
        (failure) => throw Exception('Event not found'),
        (event) => event,
      );

      // Get attendee count
      final attendeeCountResult =
          await _attendeeRepository.getAttendeeCount(eventId);
      final totalAttendees = attendeeCountResult.fold(
        (failure) => 0,
        (count) => count,
      );

      // Get check-in count
      final checkedInCount = await _database.getEventCheckedInCount(eventId);

      // Calculate check-in rate
      final checkInRate =
          totalAttendees > 0 ? (checkedInCount / totalAttendees) * 100 : 0.0;

      // Get check-ins by hour (simplified - last 24 hours)
      final checkInsByHour = await _getCheckInsByHour(eventId);

      // Get check-ins by ticket type
      final checkInsByTicketType = await _getCheckInsByTicketType(eventId);

      // Ensure we have default values if data is empty
      final safeCheckInsByHour = checkInsByHour.isEmpty ? {'00:00': 0} : checkInsByHour;
      final safeCheckInsByTicketType = checkInsByTicketType.isEmpty ? {'Regular': 0} : checkInsByTicketType;

      final analytics = EventAnalytics(
        eventId: eventId,
        eventName: event.name,
        totalAttendees: totalAttendees,
        checkedInCount: checkedInCount,
        checkInRate: checkInRate,
        noShowCount: totalAttendees - checkedInCount,
        checkInsByHour: safeCheckInsByHour,
        checkInsByTicketType: safeCheckInsByTicketType,
        lastUpdated: DateTime.now(),
      );

      return Right(analytics);
    } catch (e) {
      return Left(LocalFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Map<String, int>>> getCheckInsByTimeRange(
    String eventId,
    DateTime start,
    DateTime end,
  ) async {
    try {
      // This would require more complex database queries
      // For now, return simplified data
      final checkIns = await _database.getCheckInsByEvent(eventId);
      final filteredCheckIns = checkIns
          .where(
            (checkIn) =>
                checkIn.checkInTime.isAfter(start) &&
                checkIn.checkInTime.isBefore(end),
          )
          .toList();

      final hourlyData = <String, int>{};
      for (final checkIn in filteredCheckIns) {
        final hour = '${checkIn.checkInTime.hour}:00';
        hourlyData[hour] = (hourlyData[hour] ?? 0) + 1;
      }

      return Right(hourlyData);
    } catch (e) {
      return Left(LocalFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Map<String, dynamic>>>> getTopCheckInHours(
    String eventId,
  ) async {
    try {
      final checkIns = await _database.getCheckInsByEvent(eventId);

      final hourlyData = <int, int>{};
      for (final checkIn in checkIns) {
        final hour = checkIn.checkInTime.hour;
        hourlyData[hour] = (hourlyData[hour] ?? 0) + 1;
      }

      final sortedHours = hourlyData.entries.toList()
        ..sort((a, b) => b.value.compareTo(a.value));

      final topHours = sortedHours
          .take(5)
          .map(
            (entry) => {
              'hour': entry.key,
              'count': entry.value,
            },
          )
          .toList();

      return Right(topHours);
    } catch (e) {
      return Left(LocalFailure(e.toString()));
    }
  }

  Future<Map<String, int>> _getCheckInsByHour(String eventId) async {
    final checkIns = await _database.getCheckInsByEvent(eventId);
    final hourlyData = <String, int>{};

    for (final checkIn in checkIns) {
      final hour = '${checkIn.checkInTime.hour.toString().padLeft(2, '0')}:00';
      hourlyData[hour] = (hourlyData[hour] ?? 0) + 1;
    }

    return hourlyData;
  }

  Future<Map<String, int>> _getCheckInsByTicketType(String eventId) async {
    // This requires joining check-ins with attendees
    // For simplified implementation, we'll query attendees who are checked in
    final attendees = await _database.getAttendeesByEvent(eventId);
    final ticketTypeData = <String, int>{};

    for (final attendee in attendees) {
      if (attendee.status == 'AttendeeStatus.checkedIn') {
        final ticketType = attendee.ticketType;
        ticketTypeData[ticketType] = (ticketTypeData[ticketType] ?? 0) + 1;
      }
    }

    return ticketTypeData;
  }
}
