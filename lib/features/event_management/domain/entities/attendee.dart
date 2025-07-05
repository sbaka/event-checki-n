import 'package:freezed_annotation/freezed_annotation.dart';

part 'attendee.freezed.dart';
part 'attendee.g.dart';

@freezed
class Attendee with _$Attendee {
  const factory Attendee({
    required String id,
    required String eventId,
    required String firstName,
    required String lastName,
    required String email,
    required AttendeeStatus status,
    required DateTime registrationDate,
    required String ticketType,
    required String qrCode,
    required bool isVip,
    required DateTime createdAt,
    required DateTime updatedAt,
    String? phone,
    String? company,
    String? jobTitle,
    String? notes,
    Map<String, dynamic>? customFields,
  }) = _Attendee;

  factory Attendee.fromJson(Map<String, dynamic> json) => _$AttendeeFromJson(json);
}

@freezed
class AttendeeStatus with _$AttendeeStatus {
  const factory AttendeeStatus.registered() = _Registered;
  const factory AttendeeStatus.confirmed() = _Confirmed;
  const factory AttendeeStatus.checkedIn() = _CheckedIn;
  const factory AttendeeStatus.cancelled() = _Cancelled;
  const factory AttendeeStatus.noShow() = _NoShow;

  factory AttendeeStatus.fromJson(Map<String, dynamic> json) => _$AttendeeStatusFromJson(json);
}