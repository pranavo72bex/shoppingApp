import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shoppingApp/domain/product/i_product_repo.dart';
import 'package:shoppingApp/domain/product/product.dart';
import 'package:shoppingApp/infrastructure/product/product_repo.dart';

part 'popular_deals_event.dart';
part 'popular_deals_state.dart';
part 'popular_deals_bloc.freezed.dart';

@injectable
class PopularDealsBloc extends Bloc<PopularDealsEvent, PopularDealsState> {
  PopularDealsBloc() : super(const _Loading());

  final IProductRepo _productRepo = ProductRepo();

  @override
  Stream<PopularDealsState> mapEventToState(
    PopularDealsEvent event,
  ) async* {
    yield* event.map(started: (e) async* {
      yield _Loading();
      final productList = await _productRepo.getPopularDeals();
      yield _Loaded(productList: productList);
    });
  }
}
