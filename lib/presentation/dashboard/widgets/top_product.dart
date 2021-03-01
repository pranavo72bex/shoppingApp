// import 'package:auto_route/auto_route.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:shoppingApp/application/popular_deals/popular_deals_bloc.dart';

// import '../../core/app_router.gr.dart';
// import 'product_grid_item.dart';

// class TopProduct extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => PopularDealsBloc()..add(PopularDealsEvent.started()),
//       child: Column(
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 'Top Product'.toUpperCase(),
//                 style: Theme.of(context).textTheme.headline6,
//               ),
//               IconButton(
//                   icon: Icon(Icons.arrow_forward),
//                   onPressed: () {
//                     ExtendedNavigator.of(context).push(Routes.categoryItemsList,
//                         arguments: CategoryItemsListArguments(
//                             categoryName: 'Top Product'.toUpperCase()));
//                   })
//             ],
//           ),
//           Container(
//             child: BlocBuilder<PopularDealsBloc, PopularDealsState>(
//               builder: (context, state) {
//                 return state.map(
//                   loading: (_) {
//                     return CircularProgressIndicator();
//                   },
//                   failure: (_) {
//                     return Text('Something error occured');
//                   },
//                   loaded: (s) {
//                     return GridView.count(
//                       childAspectRatio: 0.55,
//                       physics: NeverScrollableScrollPhysics(),
//                       // padding: EdgeInsets.all(8),
//                       mainAxisSpacing: 16,
//                       crossAxisSpacing: 16,
//                       // scrollDirection: Axis.horizontal,
//                       shrinkWrap: true,
//                       crossAxisCount: 2,
//                       children: s.productList
//                           .map(
//                             (product) => ProductGridItem(product: product),
//                           )
//                           .toList(),
//                     );
//                   },
//                 );
//               },
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
