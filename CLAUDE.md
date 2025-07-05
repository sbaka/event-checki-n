# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.


## Project Overview

This is a Flutter event check-in application using Clean Architecture principles. The app allows users to manage events, check in attendees using QR codes, and track event analytics.

## Key Commands

### Development Commands
```bash
# Get dependencies
flutter pub get

# Run code generation (required after changes to models/DI)
flutter packages pub run build_runner build

# Run the app
flutter run

# Run tests
flutter test

# Check for lint issues
flutter analyze

# Clean build artifacts
flutter clean
```

### Code Generation
Run code generation when you modify:
- Injectable/DI annotations
- Freezed models
- JSON serializable models
- Auto Route definitions
- Drift database schemas
- Hive type adapters

## Architecture

### Clean Architecture Structure
The app follows Clean Architecture with these layers:

- **Domain Layer**: Contains business logic, entities, repositories (interfaces), and use cases
- **Data Layer**: Implements repositories, handles data sources (local/remote), and data models
- **Presentation Layer**: Contains UI components, BLoC state management, and pages/widgets

### Key Directories

- `lib/core/`: Core functionality (DI, routing, networking, themes, storage)
- `lib/features/`: Feature-specific modules organized by Clean Architecture layers
  - `auth/`: Authentication and user management
  - `check_in/`: QR code scanning and attendee check-in
  - `event_management/`: Event creation, editing, and management
  - `analytics/`: Event analytics and reporting  
  - `sync/`: Data synchronization between local and remote

### State Management
- Uses **BLoC pattern** with `flutter_bloc` for state management
- Events and states are implemented using `freezed` for immutability
- BLoCs are injected using `get_it` dependency injection

### Dependency Injection
- Uses `get_it` with `injectable` for dependency injection
- Dependencies are configured in `lib/core/di/injection.dart`
- Supports multiple environments (dev/staging/prod)

### Navigation
- Uses `auto_route` for type-safe navigation
- Routes are defined in `lib/core/routes/app_router.dart`
- Supports nested routing with tabs and parameter passing

### Data Persistence
- **Hive**: For simple key-value storage and caching
- **Drift**: For complex relational data and local database
- **Flutter Secure Storage**: For sensitive data like tokens
- **Offline-first**: App designed to work offline with sync capabilities

### Networking
- Uses `dio` HTTP client with interceptors
- Connectivity checking before requests
- Error handling with custom exceptions
- Token-based authentication (implementation in progress)

## Development Workflow

1. **Adding new features**: Create feature folder with clean architecture structure
2. **State management**: Use BLoC pattern with freezed for events/states
3. **Models**: Use freezed for immutable data classes with JSON serialization
4. **Networking**: Use DioClient for HTTP requests with error handling
5. **Navigation**: Add routes to AppRouter with auto_route
6. **Dependency injection**: Register services in injection.dart with injectable annotations

## Testing

- Unit tests for business logic (use cases, repositories)
- Widget tests for UI components
- BLoC tests using `bloc_test` package
- Mock dependencies using `mockito`

## Code Style

- Uses `very_good_analysis` linting rules
- Follows Flutter/Dart conventions
- Generated files are excluded from analysis (.g.dart, .freezed.dart, .gr.dart)
- Custom fonts: Poppins font family
- Material 3 design with custom color scheme