import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart' hide Banner;
import '../../../domain/dashboard/dashboard.dart';

class HomepageBanner extends StatefulWidget {
  final List<Banner> banner;

  const HomepageBanner({Key key, @required this.banner}) : super(key: key);

  @override
  _HomepageBannerState createState() => _HomepageBannerState();
}

class _HomepageBannerState extends State<HomepageBanner> {
  int _current = 0;
  CarouselController buttonCarouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          CarouselSlider.builder(
            carouselController: buttonCarouselController,
            options: CarouselOptions(
                autoPlay: true,
                viewportFraction: 1,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
            itemBuilder: (BuildContext context, int index, int realIndex) =>
                Stack(
              children: [
                CachedNetworkImage(
                  imageUrl: widget.banner[index].image,
                  fit: BoxFit.cover,
                  height: 400,
                  width: double.infinity,
                ),
                Positioned(
                  top: 10,
                  left: 10,
                  right: 10,
                  child: Text(
                    widget.banner[index].title,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            itemCount: widget.banner.length,
          ),
          Positioned(
            left: 8,
            child: Row(
              children: widget.banner.map(
                (image) {
                  int index = widget.banner.indexOf(image);
                  return Container(
                    width: _current == index ? 16.0 : 8,
                    height: 8.0,
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                    decoration: BoxDecoration(
                      // shape: BoxShape.circle,
                      borderRadius: BorderRadius.circular(10),
                      color: _current == index
                          ? Theme.of(context).accentColor
                          : Color.fromRGBO(0, 0, 0, 0.4),
                    ),
                  );
                },
              ).toList(),
            ),
          ),
          Positioned(
            top: 35,
            left: 10,
            // right: 10,
            child: new MaterialButton(
                height: 40,
                minWidth: 30,
                elevation: 2,
                color: Colors.orange,
                textColor: Colors.black,
                child: Row(
                  children: [new Text("Order Now"), Icon(Icons.arrow_forward)],
                ),
                onPressed: () => {},
                splashColor: Colors.green),
          )
        ],
      ),
    );
  }
}
