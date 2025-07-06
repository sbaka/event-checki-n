import 'package:injectable/injectable.dart';
import 'package:event_check_in/core/errors/exceptions.dart';
import 'package:event_check_in/core/network/event_api_service.dart';
import 'package:event_check_in/core/network/api_models.dart' as api;
import 'package:event_check_in/features/event_management/domain/entities/event.dart' as domain;

@injectable
class EventRemoteDataSource {
  EventRemoteDataSource(this._eventApiService);

  final EventApiService _eventApiService;

  Future<List<domain.Event>> getAllEvents() async {
    try {
      final response = await _eventApiService.getEvents();
      return response.events.map(_mapResponseToEntity).toList();
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }

  Future<domain.Event> getEventById(String id) async {
    try {
      final response = await _eventApiService.getEvent(id);
      return _mapResponseToEntity(response);
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }

  Future<domain.Event> createEvent(domain.Event event) async {
    try {
      final request = _mapEntityToCreateRequest(event);
      final response = await _eventApiService.createEvent(request);
      return _mapResponseToEntity(response);
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }

  Future<domain.Event> updateEvent(domain.Event event) async {
    try {
      final request = _mapEntityToCreateRequest(event);
      final response = await _eventApiService.updateEvent(event.id, request);
      return _mapResponseToEntity(response);
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }

  Future<void> deleteEvent(String id) async {
    try {
      await _eventApiService.deleteEvent(id);
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }

  Future<List<domain.Event>> getEventsByStatus(domain.EventStatus status) async {
    try {
      final apiStatus = _mapDomainStatusToApiStatus(status);
      final response = await _eventApiService.getEvents(status: apiStatus);
      return response.events.map(_mapResponseToEntity).toList();
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }

  domain.Event _mapResponseToEntity(api.EventResponse response) {
    return domain.Event(
      id: response.id,
      name: response.name,
      description: response.description ?? '',
      startDate: response.startDate,
      endDate: response.endDate,
      location: response.location,
      organizerId: response.organizerId,
      status: _mapApiStatusToDomainStatus(response.status),
      isActive: response.status == api.EventStatus.active,
      maxAttendees: response.maxAttendees ?? 0,
      allowCheckIn: response.allowCheckIn,
      requiresApproval: response.requiresApproval,
      createdAt: response.createdAt,
      updatedAt: response.updatedAt,
      imageUrl: response.imageUrl,
      contactEmail: response.contactEmail,
      contactPhone: response.contactPhone,
      metadata: response.eventMetadata,
    );
  }

  api.EventCreateRequest _mapEntityToCreateRequest(domain.Event event) {
    return api.EventCreateRequest(
      name: event.name,
      description: event.description.isNotEmpty ? event.description : null,
      startDate: event.startDate,
      endDate: event.endDate,
      location: event.location,
      maxAttendees: event.maxAttendees > 0 ? event.maxAttendees : null,
      allowCheckIn: event.allowCheckIn,
      requiresApproval: event.requiresApproval,
      imageUrl: event.imageUrl,
      contactEmail: event.contactEmail,
      contactPhone: event.contactPhone,
      eventMetadata: event.metadata,
    );
  }

  domain.EventStatus _mapApiStatusToDomainStatus(api.EventStatus apiStatus) {
    switch (apiStatus) {
      case api.EventStatus.draft:
        return const domain.EventStatus.draft();
      case api.EventStatus.published:
        return const domain.EventStatus.published();
      case api.EventStatus.active:
        return const domain.EventStatus.active();
      case api.EventStatus.completed:
        return const domain.EventStatus.completed();
      case api.EventStatus.cancelled:
        return const domain.EventStatus.cancelled();
    }
  }

  api.EventStatus _mapDomainStatusToApiStatus(domain.EventStatus domainStatus) {
    return domainStatus.when(
      draft: () => api.EventStatus.draft,
      published: () => api.EventStatus.published,
      active: () => api.EventStatus.active,
      completed: () => api.EventStatus.completed,
      cancelled: () => api.EventStatus.cancelled,
    );
  }
}