import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../../../domain/dashboard/dashboard.dart';

class HomepageSlider extends StatefulWidget {
  final List<Brand> slider; //brand and slider have same entities

  const HomepageSlider({Key key, @required this.slider}) : super(key: key);

  @override
  _HomepageSliderState createState() => _HomepageSliderState();
}

class _HomepageSliderState extends State<HomepageSlider> {
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
                ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: CachedNetworkImage(
                imageUrl: widget.slider[index].image,
                fit: BoxFit.cover,
                height: 400,
                width: double.infinity,
              ),
            ),
            itemCount: widget.slider.length,
          ),
          Positioned(
            left: 8,
            child: Row(
              children: widget.slider.map((image) {
                int index = widget.slider.indexOf(image);
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
