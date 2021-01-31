import 'package:flutter/material.dart';
import '../../common_widget/text_style.dart';
import 'star_rating.dart';

class ReviewItem extends StatefulWidget {
  const ReviewItem({Key key}) : super(key: key);

  @override
  _ReviewItemState createState() => _ReviewItemState();
}

class _ReviewItemState extends State<ReviewItem> {
  double rating = 4;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundImage: ExactAssetImage('assets/profile.jpg'),
                ),
                VerticalDivider(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "David Martin",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "32 minutes ago",
                      style: Constants.subtextHeading,
                    )
                  ],
                )
              ],
            ),
          ),
          Divider(
              // height: 2,
              ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              StarRating(
                rating: rating,
                onRatingChanged: (rating) {
                  setState(() {
                    this.rating = rating;
                  });
                },
              ),
              VerticalDivider(),
              Text(
                rating.toString(),
                style: Theme.of(context).textTheme.headline6,
              )
            ],
          ),
          Text(
            'Carter team is fast and always delievr fresh quality fruits highly recommended',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}
