import 'package:injectable/injectable.dart';
import 'package:event_check_in/core/network/api_models.dart';
import 'package:event_check_in/core/network/dio_client.dart';

@singleton
class EventApiService {
  EventApiService(this._dioClient);

  final DioClient _dioClient;

  /// Get events with filters and pagination
  Future<EventListResponse> getEvents({
    String? organizerId,
    EventStatus? status,
    int page = 1,
    int size = 20,
  }) async {
    final queryParameters = <String, dynamic>{
      'page': page,
      'size': size,
    };

    if (organizerId != null) queryParameters['organizer_id'] = organizerId;
    if (status != null) queryParameters['status'] = status.name;

    final response = await _dioClient.get<Map<String, dynamic>>(
      '/api/events/',
      queryParameters: queryParameters,
    );

    return EventListResponse.fromJson(response.data!);
  }

  /// Get event by ID
  Future<EventResponse> getEvent(String eventId) async {
    final response = await _dioClient.get<Map<String, dynamic>>(
      '/api/events/$eventId',
    );

    return EventResponse.fromJson(response.data!);
  }

  /// Create a new event
  Future<EventResponse> createEvent(EventCreateRequest request) async {
    final response = await _dioClient.post<Map<String, dynamic>>(
      '/api/events/',
      data: request.toJson(),
    );

    return EventResponse.fromJson(response.data!);
  }

  /// Update an existing event
  Future<EventResponse> updateEvent(
    String eventId,
    EventCreateRequest request,
  ) async {
    final response = await _dioClient.put<Map<String, dynamic>>(
      '/api/events/$eventId',
      data: request.toJson(),
    );

    return EventResponse.fromJson(response.data!);
  }

  /// Delete an event
  Future<MessageResponse> deleteEvent(String eventId) async {
    final response = await _dioClient.delete<Map<String, dynamic>>(
      '/api/events/$eventId',
    );

    return MessageResponse.fromJson(response.data!);
  }

  /// Change event status
  Future<EventResponse> changeEventStatus(
    String eventId,
    EventStatus newStatus,
  ) async {
    final response = await _dioClient.patch<Map<String, dynamic>>(
      '/api/events/$eventId/status',
      data: {'new_status': newStatus.name},
    );

    return EventResponse.fromJson(response.data!);
  }

  /// Duplicate an event
  Future<EventResponse> duplicateEvent(
    String eventId,
    String newName,
  ) async {
    final response = await _dioClient.post<Map<String, dynamic>>(
      '/api/events/$eventId/duplicate',
      data: {'new_name': newName},
    );

    return EventResponse.fromJson(response.data!);
  }
}