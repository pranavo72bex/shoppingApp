part of 'category_bloc.dart';

@freezed
abstract class CategoryState with _$CategoryState {
  const factory CategoryState.initial() = _Initial;
  const factory CategoryState.loading() = _Loading;
  const factory CategoryState.loaded({@required List<Product> products}) =
      _Loaded;
}
