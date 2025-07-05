import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:event_check_in/features/event_management/domain/entities/check_in.dart';

part 'check_in_event.freezed.dart';

@freezed
class CheckInEvent with _$CheckInEvent {
  const factory CheckInEvent.scanQrCode(
    String qrCode, 
    String eventId,
  ) = _ScanQrCode;
  
  const factory CheckInEvent.checkInAttendee(
    String attendeeId, 
    String eventId, 
    CheckInMethod method,
  ) = _CheckInAttendee;
  
  const factory CheckInEvent.loadCheckIns(String eventId) = _LoadCheckIns;
  const factory CheckInEvent.validateQrCode(String qrCode) = _ValidateQrCode;
  const factory CheckInEvent.resetState() = _ResetState;
  const factory CheckInEvent.searchAttendee(
    String query, 
    String eventId,
  ) = _SearchAttendee;
  
  const factory CheckInEvent.startScanning() = _StartScanning;
  const factory CheckInEvent.stopScanning() = _StopScanning;
}