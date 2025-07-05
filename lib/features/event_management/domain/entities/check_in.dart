import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_in.freezed.dart';
part 'check_in.g.dart';

@freezed
class CheckIn with _$CheckIn {
  const factory CheckIn({
    required String id,
    required String eventId,
    required String attendeeId,
    required DateTime checkInTime,
    required CheckInMethod method,
    required CheckInStatus status,
    required String deviceId,
    required String operatorId,
    required DateTime createdAt,
    String? notes,
    Map<String, dynamic>? metadata,
  }) = _CheckIn;

  factory CheckIn.fromJson(Map<String, dynamic> json) => _$CheckInFromJson(json);
}

@freezed
class CheckInMethod with _$CheckInMethod {
  const factory CheckInMethod.qrCode() = _QrCode;
  const factory CheckInMethod.manual() = _Manual;
  const factory CheckInMethod.bulk() = _Bulk;

  factory CheckInMethod.fromJson(Map<String, dynamic> json) => _$CheckInMethodFromJson(json);
}

@freezed
class CheckInStatus with _$CheckInStatus {
  const factory CheckInStatus.pending() = _Pending;
  const factory CheckInStatus.completed() = _Completed;
  const factory CheckInStatus.failed() = _Failed;

  factory CheckInStatus.fromJson(Map<String, dynamic> json) => _$CheckInStatusFromJson(json);
}