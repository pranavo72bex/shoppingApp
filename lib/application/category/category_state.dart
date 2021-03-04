part of 'category_bloc.dart';

@freezed
abstract class CategoryState with _$CategoryState {
  const factory CategoryState.loading() = _Loading;
  const factory CategoryState.loaded({@required List<Product> products}) =
      _Loaded;
  const factory CategoryState.failure({String msgI}) = _Failure;
}
