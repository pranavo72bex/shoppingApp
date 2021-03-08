// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i12;
import 'application/category/category_bloc.dart' as _i13;
import 'application/dashboard/dashboard_bloc.dart' as _i14;
import 'application/general_detail/general_detail_cubit.dart' as _i15;
import 'domain/auth/i_auth_repo.dart' as _i3;
import 'domain/general_detail/i_general_detail_repo.dart' as _i6;
import 'domain/product/i_product_repo.dart' as _i8;
import 'domain/user/i_user_repo.dart' as _i10;
import 'infrastructure/auth/auth_repo.dart' as _i4;
import 'infrastructure/core/injectable_module.dart' as _i16;
import 'infrastructure/general_detail/general_detail_repo.dart' as _i7;
import 'infrastructure/product/product_repo.dart' as _i9;
import 'infrastructure/user/user_repo.dart'
    as _i11; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String environment, _i2.EnvironmentFilter environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.IAuthRepo>(() => _i4.AuthRepo(get<_i5.Dio>()));
  gh.lazySingleton<_i6.IGeneralDetailRepo>(
      () => _i7.GeneralDetailRepo(get<_i5.Dio>()));
  gh.lazySingleton<_i8.IProductRepo>(() => _i9.ProductRepo(get<_i5.Dio>()));
  gh.lazySingleton<_i10.IUserRepo>(() => _i11.UserRepo());
  gh.factory<_i12.AuthBloc>(() => _i12.AuthBloc(
      authRepo: get<_i3.IAuthRepo>(), userRepo: get<_i10.IUserRepo>()));
  gh.factory<_i13.CategoryBloc>(
      () => _i13.CategoryBloc(get<_i8.IProductRepo>()));
  gh.factory<_i14.DashboardBloc>(
      () => _i14.DashboardBloc(get<_i8.IProductRepo>()));
  gh.factory<_i15.GeneralDetailCubit>(
      () => _i15.GeneralDetailCubit(get<_i6.IGeneralDetailRepo>()));
  gh.singleton<_i5.Dio>(registerModule.dio);
  return get;
}

class _$RegisterModule extends _i16.RegisterModule {}
