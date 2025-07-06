import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_models.freezed.dart';
part 'api_models.g.dart';

// Auth Models
@freezed
class LoginRequest with _$LoginRequest {
  const factory LoginRequest({
    required String email,
    required String password,
  }) = _LoginRequest;

  factory LoginRequest.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestFromJson(json);
}

@freezed
class LoginResponse with _$LoginResponse {
  const factory LoginResponse({
    @JsonKey(name: 'access_token') required String accessToken,
    @JsonKey(name: 'refresh_token') required String refreshToken,
    @JsonKey(name: 'token_type') String? tokenType,
    required UserResponse user,
  }) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}

@freezed
class UserResponse with _$UserResponse {
  const factory UserResponse({
    required String id,
    required String email,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    @JsonKey(name: 'full_name') required String fullName,
    String? phone,
    @JsonKey(name: 'profile_image') String? profileImage,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _UserResponse;

  factory UserResponse.fromJson(Map<String, dynamic> json) =>
      _$UserResponseFromJson(json);
}

@freezed
class RefreshTokenRequest with _$RefreshTokenRequest {
  const factory RefreshTokenRequest({
    @JsonKey(name: 'refresh_token') required String refreshToken,
  }) = _RefreshTokenRequest;

  factory RefreshTokenRequest.fromJson(Map<String, dynamic> json) =>
      _$RefreshTokenRequestFromJson(json);
}

@freezed
class RefreshTokenResponse with _$RefreshTokenResponse {
  const factory RefreshTokenResponse({
    @JsonKey(name: 'access_token') required String accessToken,
    @JsonKey(name: 'refresh_token') required String refreshToken,
    @JsonKey(name: 'token_type') String? tokenType,
  }) = _RefreshTokenResponse;

  factory RefreshTokenResponse.fromJson(Map<String, dynamic> json) =>
      _$RefreshTokenResponseFromJson(json);
}

// Event Models
enum EventStatus {
  @JsonValue('draft')
  draft,
  @JsonValue('published')
  published,
  @JsonValue('active')
  active,
  @JsonValue('completed')
  completed,
  @JsonValue('cancelled')
  cancelled,
}

@freezed
class EventResponse with _$EventResponse {
  const factory EventResponse({
    required String id,
    required String name,
    String? description,
    @JsonKey(name: 'start_date') required DateTime startDate,
    @JsonKey(name: 'end_date') required DateTime endDate,
    required String location,
    @JsonKey(name: 'organizer_id') required String organizerId,
    required EventStatus status,
    @JsonKey(name: 'max_attendees') int? maxAttendees,
    @JsonKey(name: 'allow_check_in') required bool allowCheckIn,
    @JsonKey(name: 'requires_approval') required bool requiresApproval,
    @JsonKey(name: 'image_url') String? imageUrl,
    @JsonKey(name: 'contact_email') String? contactEmail,
    @JsonKey(name: 'contact_phone') String? contactPhone,
    @JsonKey(name: 'event_metadata') Map<String, dynamic>? eventMetadata,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _EventResponse;

  factory EventResponse.fromJson(Map<String, dynamic> json) =>
      _$EventResponseFromJson(json);
}

@freezed
class EventCreateRequest with _$EventCreateRequest {
  const factory EventCreateRequest({
    required String name,
    String? description,
    @JsonKey(name: 'start_date') required DateTime startDate,
    @JsonKey(name: 'end_date') required DateTime endDate,
    required String location,
    @JsonKey(name: 'max_attendees') int? maxAttendees,
    @JsonKey(name: 'allow_check_in') bool? allowCheckIn,
    @JsonKey(name: 'requires_approval') bool? requiresApproval,
    @JsonKey(name: 'image_url') String? imageUrl,
    @JsonKey(name: 'contact_email') String? contactEmail,
    @JsonKey(name: 'contact_phone') String? contactPhone,
    @JsonKey(name: 'event_metadata') Map<String, dynamic>? eventMetadata,
  }) = _EventCreateRequest;

  factory EventCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$EventCreateRequestFromJson(json);
}

@freezed
class EventListResponse with _$EventListResponse {
  const factory EventListResponse({
    required List<EventResponse> events,
    required int total,
    required int page,
    required int size,
    @JsonKey(name: 'total_pages') required int totalPages,
    @JsonKey(name: 'has_next') required bool hasNext,
    @JsonKey(name: 'has_previous') required bool hasPrevious,
  }) = _EventListResponse;

  factory EventListResponse.fromJson(Map<String, dynamic> json) =>
      _$EventListResponseFromJson(json);
}

// Attendee Models
enum AttendeeStatus {
  @JsonValue('registered')
  registered,
  @JsonValue('confirmed')
  confirmed,
  @JsonValue('checkedIn')
  checkedIn,
  @JsonValue('cancelled')
  cancelled,
  @JsonValue('noShow')
  noShow,
}

@freezed
class AttendeeResponse with _$AttendeeResponse {
  const factory AttendeeResponse({
    required String id,
    @JsonKey(name: 'event_id') required String eventId,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    @JsonKey(name: 'full_name') required String fullName,
    required String email,
    String? phone,
    required AttendeeStatus status,
    @JsonKey(name: 'registration_date') required DateTime registrationDate,
    @JsonKey(name: 'confirmation_date') DateTime? confirmationDate,
    @JsonKey(name: 'check_in_date') DateTime? checkInDate,
    @JsonKey(name: 'qr_code') String? qrCode,
    String? notes,
    @JsonKey(name: 'custom_fields') Map<String, dynamic>? customFields,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _AttendeeResponse;

  factory AttendeeResponse.fromJson(Map<String, dynamic> json) =>
      _$AttendeeResponseFromJson(json);
}

@freezed
class AttendeeListResponse with _$AttendeeListResponse {
  const factory AttendeeListResponse({
    required List<AttendeeResponse> attendees,
    required int total,
    required int page,
    required int size,
    @JsonKey(name: 'total_pages') required int totalPages,
    @JsonKey(name: 'has_next') required bool hasNext,
    @JsonKey(name: 'has_previous') required bool hasPrevious,
    required Map<String, dynamic> stats,
  }) = _AttendeeListResponse;

  factory AttendeeListResponse.fromJson(Map<String, dynamic> json) =>
      _$AttendeeListResponseFromJson(json);
}

@freezed
class AttendeeStatsResponse with _$AttendeeStatsResponse {
  const factory AttendeeStatsResponse({
    @JsonKey(name: 'event_id') required String eventId,
    required int total,
    required int registered,
    required int confirmed,
    @JsonKey(name: 'checked_in') required int checkedIn,
    required int cancelled,
    @JsonKey(name: 'no_show') required int noShow,
    @JsonKey(name: 'check_in_rate') required double checkInRate,
  }) = _AttendeeStatsResponse;

  factory AttendeeStatsResponse.fromJson(Map<String, dynamic> json) =>
      _$AttendeeStatsResponseFromJson(json);
}

// QR Code Models
@freezed
class QRCodeValidateRequest with _$QRCodeValidateRequest {
  const factory QRCodeValidateRequest({
    @JsonKey(name: 'qr_code') required String qrCode,
  }) = _QRCodeValidateRequest;

  factory QRCodeValidateRequest.fromJson(Map<String, dynamic> json) =>
      _$QRCodeValidateRequestFromJson(json);
}

@freezed
class QRCodeValidateResponse with _$QRCodeValidateResponse {
  const factory QRCodeValidateResponse({
    required bool valid,
    @JsonKey(name: 'attendee_id') String? attendeeId,
    @JsonKey(name: 'event_id') String? eventId,
    @JsonKey(name: 'attendee_name') String? attendeeName,
    @JsonKey(name: 'event_name') String? eventName,
    required String message,
    @JsonKey(name: 'already_checked_in') bool? alreadyCheckedIn,
  }) = _QRCodeValidateResponse;

  factory QRCodeValidateResponse.fromJson(Map<String, dynamic> json) =>
      _$QRCodeValidateResponseFromJson(json);
}

// General Response Models
@freezed
class MessageResponse with _$MessageResponse {
  const factory MessageResponse({
    required String message,
  }) = _MessageResponse;

  factory MessageResponse.fromJson(Map<String, dynamic> json) =>
      _$MessageResponseFromJson(json);
}

@freezed
class ValidationError with _$ValidationError {
  const factory ValidationError({
    required String loc,
    required String msg,
    required String type,
  }) = _ValidationError;

  factory ValidationError.fromJson(Map<String, dynamic> json) =>
      _$ValidationErrorFromJson(json);
}

@freezed
class HTTPValidationError with _$HTTPValidationError {
  const factory HTTPValidationError({
    required List<ValidationError> detail,
  }) = _HTTPValidationError;

  factory HTTPValidationError.fromJson(Map<String, dynamic> json) =>
      _$HTTPValidationErrorFromJson(json);
}