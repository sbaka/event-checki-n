import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';

import 'app_router.gr.dart';

@singleton
@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        // Auth routes
        AutoRoute(
          path: '/login',
          page: LoginRoute.page,
          initial: true,
        ),
        AutoRoute(
          path: '/splash',
          page: SplashRoute.page,
        ),

        // Main app routes
        AutoRoute(
          path: '/dashboard',
          page: DashboardRoute.page,
          children: [
            AutoRoute(
              path: 'events',
              page: EventsRoute.page,
            ),
            AutoRoute(
              path: 'profile',
              page: ProfileRoute.page,
            ),
            AutoRoute(
              path: 'settings',
              page: SettingsRoute.page,
            ),
          ],
        ),

        // Event management routes
        AutoRoute(
          path: '/events/:eventId',
          page: EventDetailsRoute.page,
        ),

        // Check-in routes
        AutoRoute(
          path: '/events/:eventId/check-in',
          page: CheckInRoute.page,
        ),
        AutoRoute(
          path: '/events/:eventId/check-in/manual',
          page: ManualCheckInRoute.page,
        ),
        AutoRoute(
          path: '/events/:eventId/check-in/batch',
          page: BatchCheckInRoute.page,
        ),

        // Analytics routes
        AutoRoute(
          path: '/events/:eventId/analytics',
          page: EventAnalyticsRoute.page,
        ),

        // Sync routes
        AutoRoute(
          path: '/sync',
          page: SyncRoute.page,
        ),
      ];
}
