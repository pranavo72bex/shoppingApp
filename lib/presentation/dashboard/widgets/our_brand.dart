import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shoppingApp/domain/dashboard/dashboard.dart';
import 'package:shoppingApp/presentation/core/konstants.dart';

import '../../core/app_router.gr.dart';

class OurBrand extends StatefulWidget {
  final List<Brand> brands;

  const OurBrand({Key key, this.brands}) : super(key: key);

  @override
  _OurBrandState createState() => _OurBrandState();
}

class _OurBrandState extends State<OurBrand> {
  @override
  Widget build(BuildContext context) {
    ScrollController _scrollController = ScrollController();
    @override
    void initState() {
      super.initState();
    }

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Brands".toUpperCase(),
              style: Theme.of(context).textTheme.headline6,
            ),
            IconButton(icon: Icon(Icons.arrow_forward), onPressed: () {})
          ],
        ),
        Container(
          height: 155,
          child: ListView.builder(
            itemCount: widget.brands.length,
            controller: _scrollController,
            reverse: true,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) => CategoryGridItem(
                imageUrl: widget.brands[index].image,
                color: Colors.lightGreen,
                id: widget.brands[index].id),
          ),
        )
      ],
    );
  }
}

class CategoryGridItem extends StatelessWidget {
  final String imageUrl;
  final Color color;
  final String id;
  const CategoryGridItem({
    Key key,
    @required this.imageUrl,
    @required this.color,
    @required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: InkWell(
        onTap: () => ExtendedNavigator.of(context).push(
            Routes.categoryItemsList,
            arguments: CategoryItemsListArguments(categoryName: id)),
        child: Container(
          margin: EdgeInsets.all(5),
          padding: EdgeInsets.all(5),
          width: 150,
          height: 100,
          decoration: BoxDecoration(
            boxShadow: kShadow,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
            child: CachedNetworkImage(
              imageUrl: imageUrl,
              imageBuilder: (context, imageProvider) => Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
