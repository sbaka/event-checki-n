import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';
import 'package:drift/drift.dart';
import 'package:event_check_in/core/errors/failures.dart';
import 'package:event_check_in/core/database/database.dart';
import 'package:event_check_in/features/event_management/domain/entities/attendee.dart';
import 'package:event_check_in/features/event_management/domain/repositories/attendee_repository.dart';

@Injectable(as: AttendeeRepository)
class AttendeeRepositoryImpl implements AttendeeRepository {
  AttendeeRepositoryImpl(this._database, this._uuid);
  final AppDatabase _database;
  final Uuid _uuid;

  @override
  Future<Either<Failure, List<Attendee>>> getAttendeesByEvent(
    String eventId,
  ) async {
    try {
      final attendees = await _database.getAttendeesByEvent(eventId);
      return Right(attendees.map(_mapToEntity).toList());
    } catch (e) {
      return Left(LocalFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Attendee>> getAttendeeById(String id) async {
    try {
      final attendee = await _database.getAttendeeById(id);
      if (attendee == null) {
        return const Left(NotFoundFailure('Attendee not found'));
      }
      return Right(_mapToEntity(attendee));
    } catch (e) {
      return Left(LocalFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Attendee>> createAttendee(Attendee attendee) async {
    try {
      final attendeeToCreate = attendee.copyWith(
        id: _uuid.v4(),
        qrCode: _generateQrCode(attendee),
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      );

      final companion = _mapToCompanion(attendeeToCreate);
      await _database.insertAttendee(companion);

      return Right(attendeeToCreate);
    } catch (e) {
      return Left(LocalFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Attendee>> updateAttendee(Attendee attendee) async {
    try {
      final attendeeToUpdate = attendee.copyWith(
        updatedAt: DateTime.now(),
      );

      final companion = _mapToCompanion(attendeeToUpdate);
      await _database.updateAttendee(companion);

      return Right(attendeeToUpdate);
    } catch (e) {
      return Left(LocalFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> deleteAttendee(String id) async {
    try {
      await _database.deleteAttendee(id);
      return const Right(null);
    } catch (e) {
      return Left(LocalFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Attendee>>> searchAttendees(
    String eventId,
    String query,
  ) async {
    try {
      final attendees = await _database.getAttendeesByEvent(eventId);
      final filtered = attendees
          .where(
            (attendee) =>
                attendee.firstName
                    .toLowerCase()
                    .contains(query.toLowerCase()) ||
                attendee.lastName.toLowerCase().contains(query.toLowerCase()) ||
                attendee.email.toLowerCase().contains(query.toLowerCase()),
          )
          .toList();
      return Right(filtered.map(_mapToEntity).toList());
    } catch (e) {
      return Left(LocalFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Attendee>>> importAttendeesFromCsv(
    String eventId,
    List<Map<String, dynamic>> csvData,
  ) async {
    try {
      final attendees = <Attendee>[];

      for (final row in csvData) {
        final attendee = Attendee(
          id: _uuid.v4(),
          eventId: eventId,
          firstName: row['firstName']?.toString() ??
              row['first_name']?.toString() ??
              '',
          lastName:
              row['lastName']?.toString() ?? row['last_name']?.toString() ?? '',
          email: row['email']?.toString() ?? '',
          status: const AttendeeStatus.registered(),
          registrationDate: DateTime.now(),
          ticketType: row['ticketType']?.toString() ??
              row['ticket_type']?.toString() ??
              'General',
          qrCode: '', // Will be generated
          isVip: _parseBool(row['isVip']) || _parseBool(row['is_vip']),
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
          phone: row['phone']?.toString(),
          company: row['company']?.toString(),
          jobTitle: row['jobTitle']?.toString() ?? row['job_title']?.toString(),
          notes: row['notes']?.toString(),
          customFields: row['customFields'] != null
              ? Map<String, dynamic>.from(
                  row['customFields'] as Map<String, dynamic>,
                )
              : null,
        );

        final attendeeWithQr = attendee.copyWith(
          qrCode: _generateQrCode(attendee),
        );

        final companion = _mapToCompanion(attendeeWithQr);
        await _database.insertAttendee(companion);
        attendees.add(attendeeWithQr);
      }

      return Right(attendees);
    } catch (e) {
      return Left(LocalFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, int>> getAttendeeCount(String eventId) async {
    try {
      final count = await _database.getEventAttendeeCount(eventId);
      return Right(count);
    } catch (e) {
      return Left(LocalFailure(e.toString()));
    }
  }

  String _generateQrCode(Attendee attendee) {
    final qrData = {
      'attendeeId': attendee.id,
      'eventId': attendee.eventId,
      'email': attendee.email,
      'name': '${attendee.firstName} ${attendee.lastName}',
      'timestamp': DateTime.now().millisecondsSinceEpoch,
    };
    return base64Encode(utf8.encode(jsonEncode(qrData)));
  }

  bool _parseBool(dynamic value) {
    if (value == null) return false;
    if (value is bool) return value;
    if (value is String) {
      return value.toLowerCase() == 'true' || value == '1';
    }
    if (value is int) return value == 1;
    return false;
  }

  Attendee _mapToEntity(AttendeeData data) {
    return Attendee(
      id: data.id,
      eventId: data.eventId,
      firstName: data.firstName,
      lastName: data.lastName,
      email: data.email,
      status: _parseAttendeeStatus(data.status),
      registrationDate: data.registrationDate,
      ticketType: data.ticketType,
      qrCode: data.qrCode,
      isVip: data.isVip,
      createdAt: data.createdAt,
      updatedAt: data.updatedAt,
      phone: data.phone,
      company: data.company,
      jobTitle: data.jobTitle,
      notes: data.notes,
      customFields: data.customFields != null
          ? Map<String, dynamic>.from(
              jsonDecode(data.customFields!) as Map<String, dynamic>,
            )
          : null,
    );
  }

  AttendeesCompanion _mapToCompanion(Attendee attendee) {
    return AttendeesCompanion.insert(
      id: attendee.id,
      eventId: attendee.eventId,
      firstName: attendee.firstName,
      lastName: attendee.lastName,
      email: attendee.email,
      status: attendee.status.toString(),
      registrationDate: attendee.registrationDate,
      ticketType: attendee.ticketType,
      qrCode: attendee.qrCode,
      isVip: attendee.isVip,
      createdAt: attendee.createdAt,
      updatedAt: attendee.updatedAt,
      phone: Value(attendee.phone),
      company: Value(attendee.company),
      jobTitle: Value(attendee.jobTitle),
      notes: Value(attendee.notes),
      customFields: Value(attendee.customFields?.toString()),
    );
  }

  AttendeeStatus _parseAttendeeStatus(String status) {
    switch (status) {
      case 'AttendeeStatus.registered':
        return const AttendeeStatus.registered();
      case 'AttendeeStatus.confirmed':
        return const AttendeeStatus.confirmed();
      case 'AttendeeStatus.checkedIn':
        return const AttendeeStatus.checkedIn();
      case 'AttendeeStatus.cancelled':
        return const AttendeeStatus.cancelled();
      case 'AttendeeStatus.noShow':
        return const AttendeeStatus.noShow();
      default:
        return const AttendeeStatus.registered();
    }
  }
}
