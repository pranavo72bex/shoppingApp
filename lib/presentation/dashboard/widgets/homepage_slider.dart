import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shoppingApp/domain/dashboard/dashboard.dart';

class HomepageSlider extends StatefulWidget {
  final List<Brand> slider; //brand and slider have same entities

  const HomepageSlider({Key key, @required this.slider}) : super(key: key);

  @override
  _HomepageSliderState createState() => _HomepageSliderState();
}

class _HomepageSliderState extends State<HomepageSlider> {
  int _current = 0;
  // Widget sliderImage(int index) {
  //   return Image.asset('assets/slider/slider1.jpg');
  // }

  // final sliderImageList = [
  //   Image.asset(
  //     'assets/slider/slider0.jpg',
  //     fit: BoxFit.cover,
  //     height: 400,
  //     width: double.infinity,
  //   ),
  //   Image.asset(
  //     'assets/slider/slider1.jpg',
  //     fit: BoxFit.cover,
  //     height: 400,
  //     width: double.infinity,
  //   ),
  //   Image.asset(
  //     'assets/slider/slider2.jpg',
  //     fit: BoxFit.cover,
  //     height: 400,
  //     width: double.infinity,
  //   ),
  //   Image.asset(
  //     'assets/slider/slider3.jpg',
  //     fit: BoxFit.cover,
  //     height: 400,
  //     width: double.infinity,
  //   ),
  //   Image.asset(
  //     'assets/slider/slider4.jpg',
  //     fit: BoxFit.cover,
  //     height: 400,
  //     width: double.infinity,
  //   ),
  // ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          CarouselSlider.builder(
            // items: sliderImageList,
            options: CarouselOptions(
                // height: 500,
                viewportFraction: 1,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
            itemBuilder: (BuildContext context, int index, int realIndex) =>
                Image.network(
              widget.slider[index].image,
              fit: BoxFit.cover,
              height: 400,
              width: double.infinity,
            ),

            itemCount: widget.slider.length,
          ),
          Positioned(
            left: 8,
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.center,
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
