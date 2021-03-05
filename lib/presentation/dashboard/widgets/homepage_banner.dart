import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart' hide Banner;
import 'package:shoppingApp/domain/dashboard/dashboard.dart';

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
                Image.network(
              widget.banner[index].image,
              fit: BoxFit.cover,
              height: 400,
              width: double.infinity,
            ),
            itemCount: widget.banner.length,
          ),
          Positioned(
            left: 8,
            child: Row(
              children: widget.banner.map((image) {
                int index = widget.banner.indexOf(image);
                return Container(
                  width: _current == index ? 16.0 : 8,
                  height: 8.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    // shape: BoxShape.circle,
                    borderRadius: BorderRadius.circular(10),
                    color: _current == index
                        ? Theme.of(context).accentColor
                        : Color.fromRGBO(0, 0, 0, 0.4),
                  ),
                );
              }).toList(),
            ),
          )
        ],
      ),
    );
  }
}
