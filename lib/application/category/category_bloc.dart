import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shoppingApp/domain/product/i_product_repo.dart';
import 'package:shoppingApp/domain/product/product.dart';

part 'category_event.dart';
part 'category_state.dart';
part 'category_bloc.freezed.dart';

@injectable
class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryBloc(this._productRepo) : super(_Initial());

  final IProductRepo _productRepo;

  @override
  Stream<CategoryState> mapEventToState(
    CategoryEvent event,
  ) async* {
    yield* event.map(getTopProductsstarted: (_) async* {
      yield _Loading();
      final topProducts = await _productRepo.getTopProducts();
    });
  }
}
