import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../domain/product/i_product_repo.dart';
import '../../domain/product/product.dart';

part 'category_event.dart';
part 'category_state.dart';
part 'category_bloc.freezed.dart';

@injectable
class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryBloc(this._productRepo) : super(const _Loading());

  final IProductRepo _productRepo;

  @override
  Stream<CategoryState> mapEventToState(
    CategoryEvent event,
  ) async* {
    yield* event.map(
      getTopProductsstarted: (_) async* {
        yield const _Loading();
        try {
          final topProducts = await _productRepo.getTopProducts();
          yield _Loaded(products: topProducts);
        } catch (e) {
          yield const _Failure();
        }
      },
      getSalesProductsstarted: (_) async* {
        yield const _Loading();
        try {
          final topProducts = await _productRepo.getSalesProducts();
          yield _Loaded(products: topProducts);
        } catch (e) {
          yield const _Failure();
        }
      },
      getFeaturedProductsstarted: (_) async* {
        yield const _Loading();
        try {
          final topProducts = await _productRepo.getFeaturedProducts();
          yield _Loaded(products: topProducts);
        } catch (e) {
          yield const _Failure();
        }
      },
    );
  }
}
