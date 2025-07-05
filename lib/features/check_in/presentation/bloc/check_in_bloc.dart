import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:event_check_in/features/check_in/domain/usecases/check_in_attendee_usecase.dart';
import 'package:event_check_in/features/check_in/domain/usecases/validate_qr_code_usecase.dart';
import 'package:event_check_in/features/check_in/domain/repositories/check_in_repository.dart';
import 'package:event_check_in/features/event_management/domain/repositories/attendee_repository.dart';
import 'package:event_check_in/features/event_management/domain/entities/check_in.dart';
import 'package:event_check_in/core/errors/failures.dart';
import 'package:event_check_in/features/check_in/presentation/bloc/check_in_event.dart';
import 'package:event_check_in/features/check_in/presentation/bloc/check_in_state.dart';

@injectable
class CheckInBloc extends Bloc<CheckInEvent, CheckInState> {
  CheckInBloc(
    this._checkInAttendeeUseCase,
    this._validateQrCodeUseCase,
    this._checkInRepository,
    this._attendeeRepository,
  ) : super(const CheckInState.initial()) {
    on<CheckInEvent>(_onCheckInEvent);
  }
  final CheckInAttendeeUseCase _checkInAttendeeUseCase;
  final ValidateQrCodeUseCase _validateQrCodeUseCase;
  final CheckInRepository _checkInRepository;
  final AttendeeRepository _attendeeRepository;

  Future<void> _onCheckInEvent(
    CheckInEvent event,
    Emitter<CheckInState> emit,
  ) async {
    event.when(
      scanQrCode: (qrCode, eventId) => _onScanQrCode(qrCode, eventId, emit),
      checkInAttendee: (attendeeId, eventId, method) =>
          _onCheckInAttendee(attendeeId, eventId, method, emit),
      loadCheckIns: (eventId) => _onLoadCheckIns(eventId, emit),
      validateQrCode: (qrCode) => _onValidateQrCode(qrCode, emit),
      resetState: () => _onResetState(emit),
      searchAttendee: (query, eventId) =>
          _onSearchAttendee(query, eventId, emit),
      startScanning: () => _onStartScanning(emit),
      stopScanning: () => _onStopScanning(emit),
    );
  }

  Future<void> _onScanQrCode(
    String qrCode,
    String eventId,
    Emitter<CheckInState> emit,
  ) async {
    emit(const CheckInState.processing());

    // First validate the QR code
    final validateResult = await _validateQrCodeUseCase(qrCode);

    await validateResult.fold(
      (failure) async {
        emit(CheckInState.checkInFailure(failure));
      },
      (attendee) async {
        if (attendee == null) {
          emit(
            const CheckInState.checkInFailure(
              ValidationFailure(message: 'Invalid QR code'),
            ),
          );
          return;
        }

        emit(CheckInState.qrValidated(attendee));

        // Auto check-in after validation
        final checkInResult = await _checkInAttendeeUseCase(
          attendee.id,
          eventId,
          const CheckInMethod.qrCode(),
        );

        checkInResult.fold(
          (failure) => emit(
            CheckInState.checkInFailure(
              failure,
              attendee: attendee,
            ),
          ),
          (checkIn) => emit(CheckInState.checkInSuccess(checkIn, attendee)),
        );
      },
    );
  }

  Future<void> _onCheckInAttendee(
    String attendeeId,
    String eventId,
    CheckInMethod method,
    Emitter<CheckInState> emit,
  ) async {
    emit(const CheckInState.processing());

    final result = await _checkInAttendeeUseCase(
      attendeeId,
      eventId,
      method,
    );

    result.fold(
      (failure) => emit(CheckInState.checkInFailure(failure)),
      (checkIn) async {
        // Get attendee details for the success state
        final attendeeResult = await _attendeeRepository.getAttendeeById(
          attendeeId,
        );
        attendeeResult.fold(
          (failure) => emit(CheckInState.checkInFailure(failure)),
          (attendee) => emit(CheckInState.checkInSuccess(checkIn, attendee)),
        );
      },
    );
  }

  Future<void> _onLoadCheckIns(
    String eventId,
    Emitter<CheckInState> emit,
  ) async {
    final result = await _checkInRepository.getCheckInsByEvent(eventId);

    result.fold(
      (failure) => emit(CheckInState.error(failure)),
      (checkIns) => emit(CheckInState.checkInsLoaded(checkIns)),
    );
  }

  Future<void> _onValidateQrCode(
    String qrCode,
    Emitter<CheckInState> emit,
  ) async {
    emit(const CheckInState.processing());

    final result = await _validateQrCodeUseCase(qrCode);

    result.fold(
      (failure) => emit(CheckInState.checkInFailure(failure)),
      (attendee) {
        if (attendee != null) {
          emit(CheckInState.qrValidated(attendee));
        } else {
          emit(
            const CheckInState.checkInFailure(
              ValidationFailure(message: 'Invalid QR code'),
            ),
          );
        }
      },
    );
  }

  Future<void> _onSearchAttendee(
    String query,
    String eventId,
    Emitter<CheckInState> emit,
  ) async {
    if (query.isEmpty) {
      emit(const CheckInState.attendeesLoaded([]));
      return;
    }

    final result = await _attendeeRepository.getAttendeesByEvent(eventId);

    result.fold(
      (failure) => emit(CheckInState.error(failure)),
      (attendees) {
        final filteredAttendees = attendees.where((attendee) {
          final fullName =
              '${attendee.firstName} ${attendee.lastName}'.toLowerCase();
          final email = attendee.email.toLowerCase();
          final searchQuery = query.toLowerCase();

          return fullName.contains(searchQuery) ||
              email.contains(searchQuery) ||
              attendee.ticketType.toLowerCase().contains(searchQuery);
        }).toList();

        emit(CheckInState.attendeesLoaded(filteredAttendees));
      },
    );
  }

  void _onResetState(Emitter<CheckInState> emit) {
    emit(const CheckInState.initial());
  }

  void _onStartScanning(Emitter<CheckInState> emit) {
    emit(const CheckInState.scanning());
  }

  void _onStopScanning(Emitter<CheckInState> emit) {
    emit(const CheckInState.initial());
  }
}
