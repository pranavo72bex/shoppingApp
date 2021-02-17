// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'application/auth/auth_bloc.dart';
import 'infrastructure/auth/auth_repo.dart';
import 'domain/auth/i_auth_repo.dart';
import 'domain/product/i_product_repo.dart';
import 'domain/user/i_user_repo.dart';
import 'application/popular_deals/popular_deals_bloc.dart';
import 'infrastructure/product/product_repo.dart';
import 'infrastructure/user/user_repo.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<IAuthRepo>(() => AuthRepo());
  gh.lazySingleton<IProductRepo>(() => ProductRepo());
  gh.lazySingleton<IUserRepo>(() => UserRepo());
  gh.factory<PopularDealsBloc>(() => PopularDealsBloc());
  gh.factory<AuthBloc>(
      () => AuthBloc(authRepo: get<IAuthRepo>(), userRepo: get<IUserRepo>()));
  return get;
}
