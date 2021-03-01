// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i11;
import 'application/dashboard/dashboard_bloc.dart' as _i3;
import 'domain/auth/i_auth_repo.dart' as _i4;
import 'domain/product/i_product_repo.dart' as _i7;
import 'domain/user/i_user_repo.dart' as _i9;
import 'infrastructure/auth/auth_repo.dart' as _i5;
import 'infrastructure/core/injectable_module.dart' as _i12;
import 'infrastructure/product/product_repo.dart' as _i8;
import 'infrastructure/user/user_repo.dart'
    as _i10; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String environment, _i2.EnvironmentFilter environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.factory<_i3.DashboardBloc>(() => _i3.DashboardBloc());
  gh.lazySingleton<_i4.IAuthRepo>(() => _i5.AuthRepo(get<_i6.Dio>()));
  gh.lazySingleton<_i7.IProductRepo>(() => _i8.ProductRepo());
  gh.lazySingleton<_i9.IUserRepo>(() => _i10.UserRepo());
  gh.factory<_i11.AuthBloc>(() => _i11.AuthBloc(
      authRepo: get<_i4.IAuthRepo>(), userRepo: get<_i9.IUserRepo>()));
  gh.singleton<_i6.Dio>(registerModule.dio);
  return get;
}

class _$RegisterModule extends _i12.RegisterModule {}
