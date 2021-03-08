import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../domain/dashboard/dashboard.dart';
import '../../domain/product/i_product_repo.dart';
import '../../infrastructure/product/product_repo.dart';

part 'dashboard_event.dart';
part 'dashboard_state.dart';
part 'dashboard_bloc.freezed.dart';

@injectable
class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  DashboardBloc(this._productRepo) : super(const _Loading());

  final IProductRepo _productRepo;

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
