import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shoppingApp/presentation/core/app_router.gr.dart';

class OnboardingPage extends StatelessWidget {
  final listPagesViewModel = [
    PageViewModel(
      title: "Welcome to DailyMart indore",
      decoration: const PageDecoration(
        pageColor: Colors.white,
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 26,
        ),
        bodyTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 18,
        ),
      ),
      body:
          "Daily Mart Indore online grocery store is the no .1 grocery application",
      image: Stack(
        children: [
          Center(
            child: Container(
              width: 260,
              height: 240,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.green,
                  width: 3,
                ),
                shape: BoxShape.circle,
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/app_icon.jpg'),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
    PageViewModel(
      title: 'Best Quality grocery at your doorstep!',
      decoration: const PageDecoration(
        pageColor: Colors.white,
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 26,
        ),
        bodyTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 18,
        ),
      ),
      body:
          "Daily Mart indore online grocery store where we deliver everything on time",
      image: Stack(
        children: [
          Center(
            child: Container(
              width: 280,
              height: 240,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.green,
                  width: 3,
                ),
                shape: BoxShape.circle,
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/category/veg.jpg'),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
    PageViewModel(
      title: 'Peace of mind same day delivery guaranteed',
      decoration: const PageDecoration(
        pageColor: Colors.white,
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 26,
        ),
        bodyTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 18,
        ),
      ),
      body:
          "We dispatch all the order within two hours of the order being placed",
      image: Stack(
        children: [
          Center(
            child: Container(
              width: 280,
              height: 240,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.green,
                  width: 3,
                ),
                shape: BoxShape.circle,
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/slider/slider1.jpg'),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
    PageViewModel(
      title: 'Big saving with seasonal discounts on all products',
      decoration: const PageDecoration(
        pageColor: Colors.white,
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 26,
        ),
        bodyTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 18,
        ),
      ),
      body:
          "We delivering in providing best competitive prices to all of our customer",
      image: Stack(
        children: [
          Center(
            child: Container(
              width: 280,
              height: 240,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.green,
                  width: 3,
                ),
                shape: BoxShape.circle,
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/slider/slider3.jpg'),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: listPagesViewModel,
      onDone: () {
        ExtendedNavigator.of(context).push(Routes.signinPage);
      },
      showSkipButton: true,
      skip: const Text(
        'Skip',
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
        ),
      ),
      next: const Text(
        'Next',
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
        ),
      ),
      done: const Text(
        "Lets go",
        style: TextStyle(
          fontWeight: FontWeight.w600,
          color: Colors.black,
          fontSize: 18,
        ),
      ),
      dotsDecorator: DotsDecorator(
          size: const Size.square(10.0),
          activeSize: const Size(20.0, 10.0),
          activeColor: Colors.orange,
          color: Colors.black26,
          spacing: const EdgeInsets.symmetric(horizontal: 3.0),
          activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0))),
    );
  }
}
