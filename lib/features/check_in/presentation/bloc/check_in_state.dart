import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:event_check_in/features/event_management/domain/entities/check_in.dart';
import 'package:event_check_in/features/event_management/domain/entities/attendee.dart';
import 'package:event_check_in/core/errors/failures.dart';

part 'check_in_state.freezed.dart';

@freezed
class CheckInState with _$CheckInState {
  const factory CheckInState.initial() = _Initial;
  const factory CheckInState.scanning() = _Scanning;
  const factory CheckInState.processing() = _Processing;
  const factory CheckInState.qrValidated(Attendee attendee) = _QrValidated;
  const factory CheckInState.checkInSuccess(
    CheckIn checkIn, 
    Attendee attendee,
  ) = _CheckInSuccess;
  
  const factory CheckInState.checkInFailure(
    Failure failure, {
    Attendee? attendee,
  }) = _CheckInFailure;
  
  const factory CheckInState.attendeesLoaded(
    List<Attendee> attendees,
  ) = _AttendeesLoaded;
  
  const factory CheckInState.checkInsLoaded(
    List<CheckIn> checkIns,
  ) = _CheckInsLoaded;
  
  const factory CheckInState.error(Failure failure) = _Error;
}