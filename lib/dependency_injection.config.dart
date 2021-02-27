// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i11;
import 'application/popular_deals/popular_deals_bloc.dart' as _i10;
import 'domain/auth/i_auth_repo.dart' as _i3;
import 'domain/product/i_product_repo.dart' as _i6;
import 'domain/user/i_user_repo.dart' as _i8;
import 'infrastructure/auth/auth_repo.dart' as _i4;
import 'infrastructure/core/injectable_module.dart' as _i12;
import 'infrastructure/product/product_repo.dart' as _i7;
import 'infrastructure/user/user_repo.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String environment, _i2.EnvironmentFilter environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.IAuthRepo>(() => _i4.AuthRepo(get<_i5.Dio>()));
  gh.lazySingleton<_i6.IProductRepo>(() => _i7.ProductRepo());
  gh.lazySingleton<_i8.IUserRepo>(() => _i9.UserRepo());
  gh.factory<_i10.PopularDealsBloc>(() => _i10.PopularDealsBloc());
  gh.factory<_i11.AuthBloc>(() => _i11.AuthBloc(
      authRepo: get<_i3.IAuthRepo>(), userRepo: get<_i8.IUserRepo>()));
  gh.singleton<_i5.Dio>(registerModule.dio);
  return get;
}

class _$RegisterModule extends _i12.RegisterModule {}
