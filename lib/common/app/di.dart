import 'package:danamonTest/core/datasource/api/service/photo_service.dart';
import 'package:danamonTest/core/datasource/supabase/auth_source.dart';
import 'package:danamonTest/core/datasource/supabase/users_source.dart';
import 'package:danamonTest/feature/home/photos/cubit/photos_cubit.dart';
import 'package:danamonTest/feature/home/photos/provider/photos_provider.dart';
import 'package:danamonTest/feature/home/photos/repository/photos_repository.dart';
import 'package:danamonTest/feature/home/users/cubit/users_cubit.dart';
import 'package:danamonTest/feature/home/users/provider/users_provider.dart';
import 'package:danamonTest/feature/home/users/repository/users_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:get_secure_storage/get_secure_storage.dart';
import 'package:danamonTest/core/datasource/api/http/http_provider.dart';
import 'package:danamonTest/core/datasource/local/storage_provider.dart';
import 'package:danamonTest/core/network/bloc.dart';
import 'package:danamonTest/core/network/event.dart';
import 'package:danamonTest/feature/auth/repository/auth_repository.dart';
import 'package:danamonTest/feature/user/bloc/user_cubit.dart';
import 'package:danamonTest/feature/user/provider/user_provider.dart';
import 'package:danamonTest/feature/user/repository/user_repository.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final instance = GetIt.instance;

Future<void> initAppModule() async {
  try {
    instance.registerSingletonAsync<GetSecureStorage>(() async {
      final passwd = dotenv.env['HASH']!;
      await GetSecureStorage.init(password: passwd);
      return GetSecureStorage(password: passwd);
    });
    await instance.isReady<GetSecureStorage>();
    instance.registerSingleton<StorageProvider>(StorageProvider(instance()));
    final dio = await HttpProvider().getDio();

    instance
      ..registerSingleton(dio)
      ..registerLazySingleton<PhotoService>(() => PhotoService(instance()));

    await Supabase.initialize(
      url: 'https://uwenzmowojxmuxtwspvc.supabase.co',
      debug: true,
      // anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InV3ZW56bW93b2p4bXV4dHdzcHZjIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDg0MzA0NTEsImV4cCI6MjAyNDAwNjQ1MX0.k8Q8Omiy5vi8lc0_Y7VmupL78-13jlHpHzVauGWjVnY',
      anonKey:
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InV3ZW56bW93b2p4bXV4dHdzcHZjIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTcwODQzMDQ1MSwiZXhwIjoyMDI0MDA2NDUxfQ.R_fk5wS3tf9hMW8gGrnj8p0PmRYmw5-54Q6rd4CiDUQ',
    );

    final supabase = Supabase.instance.client;
    instance
      ..registerSingleton(supabase)
      ..registerLazySingleton<AuthSource>(() => AuthSource(instance()))
      ..registerLazySingleton<UsersSource>(() => UsersSource(instance()));

    return;
  } catch (e) {
    print('initAppModule >> $e');
    return;
  }
}

class DI extends StatelessWidget {
  const DI({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return _ProviderDI(
      child: _RepositoryDI(
        child: _BlocDI(
          child: child,
        ),
      ),
    );
  }
}

class _ProviderDI extends StatelessWidget {
  const _ProviderDI({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<UserProvider>(
          create: (context) => UserProvider(
            provider: instance(),
            service: instance(),
          )..getUser(),
        ),
        RepositoryProvider<UsersProvider>(
          create: (context) => UsersProvider(
            service: instance(),
          ),
        ),
        RepositoryProvider<PhotosProvider>(
          create: (context) => PhotosProvider(
            service: instance(),
          ),
        ),
      ],
      child: child,
    );
  }
}

class _RepositoryDI extends StatelessWidget {
  const _RepositoryDI({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<UserRepository>(
          create: (context) => UserRepository(
            provider: context.read<UserProvider>(),
          ),
        ),
        RepositoryProvider<AuthRepository>(
          create: (context) => AuthRepository(
            provider: context.read<UserProvider>(),
          ),
        ),
        RepositoryProvider<UsersRepository>(
          create: (context) => UsersRepository(
            provider: context.read<UsersProvider>(),
          ),
        ),
        RepositoryProvider<PhotosRepository>(
          create: (context) => PhotosRepository(
            provider: context.read<PhotosProvider>(),
          ),
        ),
      ],
      child: child,
    );
  }
}

class _BlocDI extends StatelessWidget {
  const _BlocDI({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<NetworkBloc>(
          create: (context) => NetworkBloc()..add(ListenConnection()),
        ),
        BlocProvider<UserCubit>(
          create: (context) => UserCubit(
            repository: context.read<UserRepository>(),
          ),
        ),
        BlocProvider(
          create: (context) => UsersCubit(
            repository: context.read<UsersRepository>(),
          ),
        ),
      ],
      child: child,
    );
  }
}
