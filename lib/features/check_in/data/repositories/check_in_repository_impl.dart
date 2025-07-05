import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';
import 'package:drift/drift.dart';
import 'package:event_check_in/core/errors/failures.dart';
import 'package:event_check_in/core/database/database.dart';
import 'package:event_check_in/features/event_management/domain/entities/check_in.dart';
import 'package:event_check_in/features/event_management/domain/entities/attendee.dart';
import 'package:event_check_in/features/event_management/domain/repositories/attendee_repository.dart';
import 'package:event_check_in/features/check_in/domain/repositories/check_in_repository.dart';

@Injectable(as: CheckInRepository)
class CheckInRepositoryImpl implements CheckInRepository {
  CheckInRepositoryImpl(this._database, this._attendeeRepository, this._uuid);
  final AppDatabase _database;
  final AttendeeRepository _attendeeRepository;
  final Uuid _uuid;

  @override
  Future<Either<Failure, CheckIn>> checkInAttendee(
    String attendeeId,
    String eventId,
    CheckInMethod method,
  ) async {
    try {
      // Check if attendee is already checked in
      final existingCheckIn = await _database.getCheckInByAttendee(attendeeId);
      if (existingCheckIn != null) {
        return const Left(
          ValidationFailure(message: 'Attendee is already checked in'),
        );
      }

      // Verify attendee exists and belongs to the event
      final attendeeResult =
          await _attendeeRepository.getAttendeeById(attendeeId);
      final attendee = attendeeResult.fold(
        (failure) => null,
        (attendee) => attendee,
      );

      if (attendee == null || attendee.eventId != eventId) {
        return const Left(
          ValidationFailure(message: 'Invalid attendee or event'),
        );
      }

      // Create check-in record
      final checkIn = CheckIn(
        id: _uuid.v4(),
        eventId: eventId,
        attendeeId: attendeeId,
        checkInTime: DateTime.now(),
        method: method,
        status: const CheckInStatus.completed(),
        deviceId: 'current-device', // TODO: Get actual device ID
        operatorId: 'current-user', // TODO: Get from auth
        createdAt: DateTime.now(),
      );

      // Update attendee status
      final updatedAttendee = attendee.copyWith(
        status: const AttendeeStatus.checkedIn(),
        updatedAt: DateTime.now(),
      );

      await _attendeeRepository.updateAttendee(updatedAttendee);

      final companion = _mapToCompanion(checkIn);
      await _database.insertCheckIn(companion);

      return Right(checkIn);
    } catch (e) {
      return Left(LocalFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Attendee?>> validateQrCode(String qrCode) async {
    try {
      // Decode QR code
      final decodedData = _decodeQrCode(qrCode);
      if (decodedData == null) {
        return const Left(ValidationFailure(message: 'Invalid QR code format'));
      }

      final attendeeId = decodedData['attendeeId'];
      if (attendeeId == null) {
        return const Left(
          ValidationFailure(message: 'QR code missing attendee ID'),
        );
      }

      // Get attendee
      final attendeeResult =
          await _attendeeRepository.getAttendeeById(attendeeId as String);
      return attendeeResult.fold(
        Left.new,
        Right.new,
      );
    } catch (e) {
      return Left(LocalFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<CheckIn>>> getCheckInsByEvent(
    String eventId,
  ) async {
    try {
      final checkIns = await _database.getCheckInsByEvent(eventId);
      return Right(checkIns.map(_mapToEntity).toList());
    } catch (e) {
      return Left(LocalFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, CheckIn?>> getCheckInByAttendee(
    String attendeeId,
  ) async {
    try {
      final checkIn = await _database.getCheckInByAttendee(attendeeId);
      return Right(checkIn != null ? _mapToEntity(checkIn) : null);
    } catch (e) {
      return Left(LocalFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, bool>> isAttendeeCheckedIn(String attendeeId) async {
    try {
      final checkIn = await _database.getCheckInByAttendee(attendeeId);
      return Right(checkIn != null);
    } catch (e) {
      return Left(LocalFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<CheckIn>>> getOfflineCheckIns() async {
    // For now, all check-ins are stored locally
    // In a full implementation, you'd filter by sync status
    try {
      final allCheckIns = await _database.getAllCheckIns();
      return Right(allCheckIns.map(_mapToEntity).toList());
    } catch (e) {
      return Left(LocalFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> syncCheckIns() async {
    // TODO: Implement sync logic with remote server
    // For now, just return success
    return const Right(null);
  }

  Map<String, dynamic>? _decodeQrCode(String qrCode) {
    try {
      final decodedBytes = base64Decode(qrCode);
      final decodedString = utf8.decode(decodedBytes);
      return jsonDecode(decodedString) as Map<String, dynamic>;
    } catch (e) {
      return null;
    }
  }

  CheckIn _mapToEntity(CheckInData data) {
    return CheckIn(
      id: data.id,
      eventId: data.eventId,
      attendeeId: data.attendeeId,
      checkInTime: data.checkInTime,
      method: _parseCheckInMethod(data.method),
      status: _parseCheckInStatus(data.status),
      deviceId: data.deviceId,
      operatorId: data.operatorId,
      createdAt: data.createdAt,
      notes: data.notes,
      metadata: data.metadata != null
          ? Map<String, dynamic>.from(
              jsonDecode(data.metadata!) as Map<String, dynamic>,
            )
          : null,
    );
  }

  CheckInsCompanion _mapToCompanion(CheckIn checkIn) {
    return CheckInsCompanion.insert(
      id: checkIn.id,
      eventId: checkIn.eventId,
      attendeeId: checkIn.attendeeId,
      checkInTime: checkIn.checkInTime,
      method: checkIn.method.toString(),
      status: checkIn.status.toString(),
      deviceId: checkIn.deviceId,
      operatorId: checkIn.operatorId,
      createdAt: checkIn.createdAt,
      notes: Value(checkIn.notes),
      metadata: Value(checkIn.metadata?.toString()),
    );
  }

  CheckInMethod _parseCheckInMethod(String method) {
    switch (method) {
      case 'CheckInMethod.qrCode':
        return const CheckInMethod.qrCode();
      case 'CheckInMethod.manual':
        return const CheckInMethod.manual();
      case 'CheckInMethod.bulk':
        return const CheckInMethod.bulk();
      default:
        return const CheckInMethod.qrCode();
    }
  }

  CheckInStatus _parseCheckInStatus(String status) {
    switch (status) {
      case 'CheckInStatus.pending':
        return const CheckInStatus.pending();
      case 'CheckInStatus.completed':
        return const CheckInStatus.completed();
      case 'CheckInStatus.failed':
        return const CheckInStatus.failed();
      default:
        return const CheckInStatus.completed();
    }
  }
}
