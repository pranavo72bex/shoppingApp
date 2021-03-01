import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shoppingApp/domain/dashboard/dashboard.dart';
import 'package:shoppingApp/domain/product/i_product_repo.dart';
import 'package:shoppingApp/domain/product/product.dart';
import 'package:shoppingApp/infrastructure/product/product_repo.dart';

part 'dashboard_event.dart';
part 'dashboard_state.dart';
part 'dashboard_bloc.freezed.dart';

@injectable
class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  DashboardBloc() : super(const _Loading());

  final IProductRepo _productRepo = ProductRepo();

  @override
  Stream<DashboardState> mapEventToState(
    DashboardEvent event,
  ) async* {
    yield* event.map(started: (e) async* {
      yield _Loading();
      final dashboard = await _productRepo.getDashboardData();
      yield _Loaded(dashboard: dashboard);
    });
  }
}
