import 'package:flutter/material.dart';

class FavoriteListItem extends StatelessWidget {
  const FavoriteListItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.black26,
          offset: Offset(0, 2),
          blurRadius: 6.0,
        )
      ], borderRadius: BorderRadius.circular(18.0), color: Colors.white),
      child: FittedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              "assets/background.png",
              width: 100,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Text(
                    "Rs 500",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).accentColor),
                  ),
                  Text(
                    "Organic lemons",
                    style: TextStyle(fontSize: 12),
                  ),
                  Text(
                    "1 kg",
                  )
                ],
              ),
            ),
            Container(
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.green),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.white,
                  size: 23,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(5.0),
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.green),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.delete,
                  color: Colors.white,
                  size: 23,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
