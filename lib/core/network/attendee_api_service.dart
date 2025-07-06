import 'package:injectable/injectable.dart';
import 'package:event_check_in/core/network/api_models.dart';
import 'package:event_check_in/core/network/dio_client.dart';

@singleton
class AttendeeApiService {
  AttendeeApiService(this._dioClient);

  final DioClient _dioClient;

  /// Get attendees for an event with filters and pagination
  Future<AttendeeListResponse> getAttendees(
    String eventId, {
    AttendeeStatus? status,
    String? search,
    int page = 1,
    int size = 20,
  }) async {
    final queryParameters = <String, dynamic>{
      'page': page,
      'size': size,
    };

    if (status != null) queryParameters['status'] = status.name;
    if (search != null && search.isNotEmpty) queryParameters['search'] = search;

    final response = await _dioClient.get<Map<String, dynamic>>(
      '/api/attendees/event/$eventId',
      queryParameters: queryParameters,
    );

    return AttendeeListResponse.fromJson(response.data!);
  }

  /// Get attendee by ID
  Future<AttendeeResponse> getAttendee(String attendeeId) async {
    final response = await _dioClient.get<Map<String, dynamic>>(
      '/api/attendees/$attendeeId',
    );

    return AttendeeResponse.fromJson(response.data!);
  }

  /// Register a new attendee (public endpoint)
  Future<AttendeeResponse> registerAttendee({
    required String eventId,
    required String firstName,
    required String lastName,
    required String email,
    String? phone,
    Map<String, dynamic>? customFields,
    String? notes,
  }) async {
    final request = {
      'event_id': eventId,
      'first_name': firstName,
      'last_name': lastName,
      'email': email,
      if (phone != null) 'phone': phone,
      if (customFields != null) 'custom_fields': customFields,
      if (notes != null) 'notes': notes,
    };

    final response = await _dioClient.post<Map<String, dynamic>>(
      '/api/attendees/register',
      data: request,
    );

    return AttendeeResponse.fromJson(response.data!);
  }

  /// Update attendee information
  Future<AttendeeResponse> updateAttendee(
    String attendeeId, {
    String? firstName,
    String? lastName,
    String? email,
    String? phone,
    Map<String, dynamic>? customFields,
    String? notes,
  }) async {
    final request = <String, dynamic>{};
    
    if (firstName != null) request['first_name'] = firstName;
    if (lastName != null) request['last_name'] = lastName;
    if (email != null) request['email'] = email;
    if (phone != null) request['phone'] = phone;
    if (customFields != null) request['custom_fields'] = customFields;
    if (notes != null) request['notes'] = notes;

    final response = await _dioClient.put<Map<String, dynamic>>(
      '/api/attendees/$attendeeId',
      data: request,
    );

    return AttendeeResponse.fromJson(response.data!);
  }

  /// Delete attendee
  Future<MessageResponse> deleteAttendee(String attendeeId) async {
    final response = await _dioClient.delete<Map<String, dynamic>>(
      '/api/attendees/$attendeeId',
    );

    return MessageResponse.fromJson(response.data!);
  }

  /// Approve or reject attendee registration
  Future<AttendeeResponse> approveAttendee(
    String attendeeId, {
    required bool approve,
    String? notes,
  }) async {
    final request = {
      'approve': approve,
      if (notes != null) 'notes': notes,
    };

    final response = await _dioClient.post<Map<String, dynamic>>(
      '/api/attendees/$attendeeId/approve',
      data: request,
    );

    return AttendeeResponse.fromJson(response.data!);
  }

  /// Update attendee status
  Future<AttendeeResponse> updateAttendeeStatus(
    String attendeeId,
    AttendeeStatus status, {
    String? notes,
  }) async {
    final request = {
      'status': status.name,
      if (notes != null) 'notes': notes,
    };

    final response = await _dioClient.patch<Map<String, dynamic>>(
      '/api/attendees/$attendeeId/status',
      data: request,
    );

    return AttendeeResponse.fromJson(response.data!);
  }

  /// Get attendee statistics for an event
  Future<AttendeeStatsResponse> getAttendeeStats(String eventId) async {
    final response = await _dioClient.get<Map<String, dynamic>>(
      '/api/attendees/event/$eventId/stats',
    );

    return AttendeeStatsResponse.fromJson(response.data!);
  }

  /// Generate QR code for attendee
  Future<Map<String, dynamic>> generateQRCode(String attendeeId) async {
    final response = await _dioClient.post<Map<String, dynamic>>(
      '/api/attendees/$attendeeId/qr-code',
    );

    return response.data!;
  }

  /// Validate QR code
  Future<QRCodeValidateResponse> validateQRCode(String qrCode) async {
    final request = QRCodeValidateRequest(qrCode: qrCode);

    final response = await _dioClient.post<Map<String, dynamic>>(
      '/api/attendees/validate-qr',
      data: request.toJson(),
    );

    return QRCodeValidateResponse.fromJson(response.data!);
  }
}