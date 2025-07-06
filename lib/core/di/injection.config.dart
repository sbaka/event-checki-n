// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:uuid/uuid.dart' as _i706;

import '../../features/analytics/data/repositories/analytics_repository_impl.dart'
    as _i425;
import '../../features/analytics/domain/repositories/analytics_repository.dart'
    as _i1044;
import '../../features/analytics/domain/usecases/get_event_analytics_usecase.dart'
    as _i675;
import '../../features/auth/data/datasources/auth_local_data_source.dart'
    as _i852;
import '../../features/auth/data/datasources/auth_remote_data_source.dart'
    as _i107;
import '../../features/auth/data/repositories/auth_repository_impl.dart'
    as _i153;
import '../../features/auth/domain/repositories/auth_repository.dart' as _i787;
import '../../features/auth/domain/usecases/get_current_user_usecase.dart'
    as _i17;
import '../../features/auth/domain/usecases/login_usecase.dart' as _i188;
import '../../features/auth/domain/usecases/logout_usecase.dart' as _i48;
import '../../features/auth/presentation/bloc/auth_bloc.dart' as _i797;
import '../../features/check_in/data/repositories/check_in_repository_impl.dart'
    as _i414;
import '../../features/check_in/domain/repositories/check_in_repository.dart'
    as _i181;
import '../../features/check_in/domain/usecases/check_in_attendee_usecase.dart'
    as _i996;
import '../../features/check_in/domain/usecases/validate_qr_code_usecase.dart'
    as _i769;
import '../../features/check_in/presentation/bloc/check_in_bloc.dart' as _i500;
import '../../features/event_management/data/datasources/attendee_local_data_source.dart'
    as _i82;
import '../../features/event_management/data/datasources/event_local_data_source.dart'
    as _i939;
import '../../features/event_management/data/datasources/event_remote_data_source.dart'
    as _i433;
import '../../features/event_management/data/repositories/attendee_repository_impl.dart'
    as _i706;
import '../../features/event_management/data/repositories/event_repository_impl.dart'
    as _i371;
import '../../features/event_management/domain/repositories/attendee_repository.dart'
    as _i483;
import '../../features/event_management/domain/repositories/event_repository.dart'
    as _i470;
import '../../features/event_management/domain/usecases/create_event_usecase.dart'
    as _i385;
import '../../features/event_management/domain/usecases/delete_event_usecase.dart'
    as _i949;
import '../../features/event_management/domain/usecases/get_events_usecase.dart'
    as _i360;
import '../../features/event_management/domain/usecases/import_attendees_usecase.dart'
    as _i196;
import '../../features/event_management/domain/usecases/update_event_usecase.dart'
    as _i219;
import '../../features/event_management/presentation/bloc/event_bloc.dart'
    as _i84;
import '../config/app_config.dart' as _i650;
import '../database/database.dart' as _i660;
import '../network/attendee_api_service.dart' as _i697;
import '../network/auth_service.dart' as _i103;
import '../network/connectivity_service.dart' as _i491;
import '../network/dio_client.dart' as _i667;
import '../network/event_api_service.dart' as _i255;
import '../routes/app_router.dart' as _i629;
import '../storage/hive_storage.dart' as _i799;
import '../storage/secure_storage.dart' as _i619;
import 'injectable_module.dart' as _i109;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final injectableModule = _$InjectableModule();
    gh.factory<_i660.AppDatabase>(() => _i660.AppDatabase());
    gh.singleton<_i491.ConnectivityService>(() => _i491.ConnectivityService());
    gh.singleton<_i619.SecureStorage>(() => _i619.SecureStorage());
    gh.singletonAsync<_i799.HiveStorage>(() => _i799.HiveStorage.init());
    gh.singleton<_i629.AppRouter>(() => _i629.AppRouter());
    gh.lazySingleton<_i706.Uuid>(() => injectableModule.uuid);
    gh.factory<_i650.AppConfig>(
        () => _i650.AppConfig.fromEnvironment(gh<String>()));
    gh.factory<_i852.AuthLocalDataSource>(
        () => _i852.AuthLocalDataSourceImpl(gh<_i619.SecureStorage>()));
    gh.singleton<_i667.DioClient>(() => _i667.DioClient(
          gh<_i650.AppConfig>(),
          gh<_i619.SecureStorage>(),
        ));
    gh.singleton<_i103.AuthService>(() => _i103.AuthService(
          gh<_i667.DioClient>(),
          gh<_i619.SecureStorage>(),
        ));
    gh.factory<_i82.AttendeeLocalDataSource>(
        () => _i82.AttendeeLocalDataSourceImpl(gh<_i660.AppDatabase>()));
    gh.factory<_i483.AttendeeRepository>(() => _i706.AttendeeRepositoryImpl(
          gh<_i660.AppDatabase>(),
          gh<_i706.Uuid>(),
        ));
    gh.factory<_i939.EventLocalDataSource>(
        () => _i939.EventLocalDataSourceImpl(gh<_i660.AppDatabase>()));
    gh.singleton<_i697.AttendeeApiService>(
        () => _i697.AttendeeApiService(gh<_i667.DioClient>()));
    gh.singleton<_i255.EventApiService>(
        () => _i255.EventApiService(gh<_i667.DioClient>()));
    gh.factory<_i433.EventRemoteDataSource>(
        () => _i433.EventRemoteDataSource(gh<_i255.EventApiService>()));
    gh.factory<_i196.ImportAttendeesUseCase>(
        () => _i196.ImportAttendeesUseCase(gh<_i483.AttendeeRepository>()));
    gh.factory<_i107.AuthRemoteDataSource>(
        () => _i107.AuthRemoteDataSourceImpl(gh<_i667.DioClient>()));
    gh.factory<_i470.EventRepository>(() => _i371.EventRepositoryImpl(
          gh<_i660.AppDatabase>(),
          gh<_i706.Uuid>(),
          gh<_i433.EventRemoteDataSource>(),
          gh<_i491.ConnectivityService>(),
        ));
    gh.factory<_i181.CheckInRepository>(() => _i414.CheckInRepositoryImpl(
          gh<_i660.AppDatabase>(),
          gh<_i483.AttendeeRepository>(),
          gh<_i706.Uuid>(),
        ));
    gh.factory<_i1044.AnalyticsRepository>(() => _i425.AnalyticsRepositoryImpl(
          gh<_i660.AppDatabase>(),
          gh<_i470.EventRepository>(),
          gh<_i483.AttendeeRepository>(),
        ));
    gh.factory<_i787.AuthRepository>(() => _i153.AuthRepositoryImpl(
          gh<_i107.AuthRemoteDataSource>(),
          gh<_i852.AuthLocalDataSource>(),
          gh<_i491.ConnectivityService>(),
        ));
    gh.factory<_i769.ValidateQrCodeUseCase>(
        () => _i769.ValidateQrCodeUseCase(gh<_i181.CheckInRepository>()));
    gh.factory<_i996.CheckInAttendeeUseCase>(
        () => _i996.CheckInAttendeeUseCase(gh<_i181.CheckInRepository>()));
    gh.factory<_i188.LoginUseCase>(
        () => _i188.LoginUseCase(gh<_i787.AuthRepository>()));
    gh.factory<_i48.LogoutUseCase>(
        () => _i48.LogoutUseCase(gh<_i787.AuthRepository>()));
    gh.factory<_i17.GetCurrentUserUseCase>(
        () => _i17.GetCurrentUserUseCase(gh<_i787.AuthRepository>()));
    gh.factory<_i360.GetEventsUseCase>(
        () => _i360.GetEventsUseCase(gh<_i470.EventRepository>()));
    gh.factory<_i219.UpdateEventUseCase>(
        () => _i219.UpdateEventUseCase(gh<_i470.EventRepository>()));
    gh.factory<_i949.DeleteEventUseCase>(
        () => _i949.DeleteEventUseCase(gh<_i470.EventRepository>()));
    gh.factory<_i385.CreateEventUseCase>(
        () => _i385.CreateEventUseCase(gh<_i470.EventRepository>()));
    gh.factory<_i675.GetEventAnalyticsUseCase>(
        () => _i675.GetEventAnalyticsUseCase(gh<_i1044.AnalyticsRepository>()));
    gh.factory<_i500.CheckInBloc>(() => _i500.CheckInBloc(
          gh<_i996.CheckInAttendeeUseCase>(),
          gh<_i769.ValidateQrCodeUseCase>(),
          gh<_i181.CheckInRepository>(),
          gh<_i483.AttendeeRepository>(),
        ));
    gh.factory<_i84.EventBloc>(() => _i84.EventBloc(
          gh<_i385.CreateEventUseCase>(),
          gh<_i360.GetEventsUseCase>(),
          gh<_i219.UpdateEventUseCase>(),
          gh<_i949.DeleteEventUseCase>(),
        ));
    gh.factory<_i797.AuthBloc>(() => _i797.AuthBloc(
          gh<_i17.GetCurrentUserUseCase>(),
          gh<_i188.LoginUseCase>(),
          gh<_i48.LogoutUseCase>(),
        ));
    return this;
  }
}

class _$InjectableModule extends _i109.InjectableModule {}
