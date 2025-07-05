// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i13;
import 'package:event_check_in/features/analytics/presentation/pages/event_analytics_page.dart'
    as _i4;
import 'package:event_check_in/features/auth/presentation/pages/login_page.dart'
    as _i7;
import 'package:event_check_in/features/auth/presentation/pages/profile_page.dart'
    as _i9;
import 'package:event_check_in/features/auth/presentation/pages/settings_page.dart'
    as _i10;
import 'package:event_check_in/features/auth/presentation/pages/splash_page.dart'
    as _i11;
import 'package:event_check_in/features/check_in/presentation/pages/check_in_page.dart'
    as _i2;
import 'package:event_check_in/features/check_in/presentation/pages/manual_check_in_page.dart'
    as _i8;
import 'package:event_check_in/features/event_management/domain/entities/event.dart'
    as _i15;
import 'package:event_check_in/features/event_management/presentation/pages/attendee_import_page.dart'
    as _i1;
import 'package:event_check_in/features/event_management/presentation/pages/dashboard_page.dart'
    as _i3;
import 'package:event_check_in/features/event_management/presentation/pages/event_form_page.dart'
    as _i5;
import 'package:event_check_in/features/event_management/presentation/pages/events_page.dart'
    as _i6;
import 'package:event_check_in/features/sync/presentation/pages/sync_page.dart'
    as _i12;
import 'package:flutter/material.dart' as _i14;

abstract class $AppRouter extends _i13.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i13.PageFactory> pagesMap = {
    AttendeeImportRoute.name: (routeData) {
      final args = routeData.argsAs<AttendeeImportRouteArgs>();
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.AttendeeImportPage(
          eventId: args.eventId,
          key: args.key,
        ),
      );
    },
    CheckInRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<CheckInRouteArgs>(
          orElse: () =>
              CheckInRouteArgs(eventId: pathParams.getString('eventId')));
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.CheckInPage(
          key: args.key,
          eventId: args.eventId,
        ),
      );
    },
    DashboardRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.DashboardPage(),
      );
    },
    EventAnalyticsRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<EventAnalyticsRouteArgs>(
          orElse: () => EventAnalyticsRouteArgs(
              eventId: pathParams.getString('eventId')));
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.EventAnalyticsPage(
          key: args.key,
          eventId: args.eventId,
        ),
      );
    },
    EventFormRoute.name: (routeData) {
      final args = routeData.argsAs<EventFormRouteArgs>(
          orElse: () => const EventFormRouteArgs());
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.EventFormPage(
          key: args.key,
          event: args.event,
        ),
      );
    },
    EventsRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.EventsPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.LoginPage(),
      );
    },
    ManualCheckInRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ManualCheckInRouteArgs>(
          orElse: () =>
              ManualCheckInRouteArgs(eventId: pathParams.getString('eventId')));
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.ManualCheckInPage(
          key: args.key,
          eventId: args.eventId,
        ),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.ProfilePage(),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.SettingsPage(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.SplashPage(),
      );
    },
    SyncRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.SyncPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AttendeeImportPage]
class AttendeeImportRoute extends _i13.PageRouteInfo<AttendeeImportRouteArgs> {
  AttendeeImportRoute({
    required String eventId,
    _i14.Key? key,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          AttendeeImportRoute.name,
          args: AttendeeImportRouteArgs(
            eventId: eventId,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'AttendeeImportRoute';

  static const _i13.PageInfo<AttendeeImportRouteArgs> page =
      _i13.PageInfo<AttendeeImportRouteArgs>(name);
}

class AttendeeImportRouteArgs {
  const AttendeeImportRouteArgs({
    required this.eventId,
    this.key,
  });

  final String eventId;

  final _i14.Key? key;

  @override
  String toString() {
    return 'AttendeeImportRouteArgs{eventId: $eventId, key: $key}';
  }
}

/// generated route for
/// [_i2.CheckInPage]
class CheckInRoute extends _i13.PageRouteInfo<CheckInRouteArgs> {
  CheckInRoute({
    _i14.Key? key,
    required String eventId,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          CheckInRoute.name,
          args: CheckInRouteArgs(
            key: key,
            eventId: eventId,
          ),
          rawPathParams: {'eventId': eventId},
          initialChildren: children,
        );

  static const String name = 'CheckInRoute';

  static const _i13.PageInfo<CheckInRouteArgs> page =
      _i13.PageInfo<CheckInRouteArgs>(name);
}

class CheckInRouteArgs {
  const CheckInRouteArgs({
    this.key,
    required this.eventId,
  });

  final _i14.Key? key;

  final String eventId;

  @override
  String toString() {
    return 'CheckInRouteArgs{key: $key, eventId: $eventId}';
  }
}

/// generated route for
/// [_i3.DashboardPage]
class DashboardRoute extends _i13.PageRouteInfo<void> {
  const DashboardRoute({List<_i13.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i4.EventAnalyticsPage]
class EventAnalyticsRoute extends _i13.PageRouteInfo<EventAnalyticsRouteArgs> {
  EventAnalyticsRoute({
    _i14.Key? key,
    required String eventId,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          EventAnalyticsRoute.name,
          args: EventAnalyticsRouteArgs(
            key: key,
            eventId: eventId,
          ),
          rawPathParams: {'eventId': eventId},
          initialChildren: children,
        );

  static const String name = 'EventAnalyticsRoute';

  static const _i13.PageInfo<EventAnalyticsRouteArgs> page =
      _i13.PageInfo<EventAnalyticsRouteArgs>(name);
}

class EventAnalyticsRouteArgs {
  const EventAnalyticsRouteArgs({
    this.key,
    required this.eventId,
  });

  final _i14.Key? key;

  final String eventId;

  @override
  String toString() {
    return 'EventAnalyticsRouteArgs{key: $key, eventId: $eventId}';
  }
}

/// generated route for
/// [_i5.EventFormPage]
class EventFormRoute extends _i13.PageRouteInfo<EventFormRouteArgs> {
  EventFormRoute({
    _i14.Key? key,
    _i15.Event? event,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          EventFormRoute.name,
          args: EventFormRouteArgs(
            key: key,
            event: event,
          ),
          initialChildren: children,
        );

  static const String name = 'EventFormRoute';

  static const _i13.PageInfo<EventFormRouteArgs> page =
      _i13.PageInfo<EventFormRouteArgs>(name);
}

class EventFormRouteArgs {
  const EventFormRouteArgs({
    this.key,
    this.event,
  });

  final _i14.Key? key;

  final _i15.Event? event;

  @override
  String toString() {
    return 'EventFormRouteArgs{key: $key, event: $event}';
  }
}

/// generated route for
/// [_i6.EventsPage]
class EventsRoute extends _i13.PageRouteInfo<void> {
  const EventsRoute({List<_i13.PageRouteInfo>? children})
      : super(
          EventsRoute.name,
          initialChildren: children,
        );

  static const String name = 'EventsRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i7.LoginPage]
class LoginRoute extends _i13.PageRouteInfo<void> {
  const LoginRoute({List<_i13.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i8.ManualCheckInPage]
class ManualCheckInRoute extends _i13.PageRouteInfo<ManualCheckInRouteArgs> {
  ManualCheckInRoute({
    _i14.Key? key,
    required String eventId,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          ManualCheckInRoute.name,
          args: ManualCheckInRouteArgs(
            key: key,
            eventId: eventId,
          ),
          rawPathParams: {'eventId': eventId},
          initialChildren: children,
        );

  static const String name = 'ManualCheckInRoute';

  static const _i13.PageInfo<ManualCheckInRouteArgs> page =
      _i13.PageInfo<ManualCheckInRouteArgs>(name);
}

class ManualCheckInRouteArgs {
  const ManualCheckInRouteArgs({
    this.key,
    required this.eventId,
  });

  final _i14.Key? key;

  final String eventId;

  @override
  String toString() {
    return 'ManualCheckInRouteArgs{key: $key, eventId: $eventId}';
  }
}

/// generated route for
/// [_i9.ProfilePage]
class ProfileRoute extends _i13.PageRouteInfo<void> {
  const ProfileRoute({List<_i13.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i10.SettingsPage]
class SettingsRoute extends _i13.PageRouteInfo<void> {
  const SettingsRoute({List<_i13.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i11.SplashPage]
class SplashRoute extends _i13.PageRouteInfo<void> {
  const SplashRoute({List<_i13.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i12.SyncPage]
class SyncRoute extends _i13.PageRouteInfo<void> {
  const SyncRoute({List<_i13.PageRouteInfo>? children})
      : super(
          SyncRoute.name,
          initialChildren: children,
        );

  static const String name = 'SyncRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}
