import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../application/category/category_bloc.dart';
import 'widgets/category_grid.dart';
import '../../dependency_injection.dart';

class CategoryPage extends StatelessWidget {
  final String categoryName;
  final CategoryEvent categoryEvent;

  const CategoryPage({
    Key key,
    @required this.categoryName,
    @required this.categoryEvent,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<CategoryBloc>()..add(categoryEvent),
      child: Scaffold(
        appBar: AppBar(
          title: Text(categoryName),
        ),
        body: CategoryPageList(),
      ),
    );
  }
}
