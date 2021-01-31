import 'package:flutter/material.dart';

import '../dashboard/dashboard_page.dart';
import '../favorites/favorites.dart';
import '../profile/profile_page.dart';

class BottomNavigationPage extends StatefulWidget {
  @override
  _BottomNavigationPageState createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  int _cIndex = 0;

  final _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (int) {
          print('Page Changes to index $int');
        },
        children: <Widget>[
          DashboardPage(),
          FavoritesPage(),
          ProfilePage(),
        ],
        physics:
            NeverScrollableScrollPhysics(), // Comment this if you need to use Swipe.
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.card_travel),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 55,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.home_outlined,
                  color: _cIndex == 0 ? Theme.of(context).primaryColor : null,
                ),
                onPressed: () {
                  setState(() {
                    _cIndex = 0;
                    _pageController.jumpToPage(0);
                  });
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.favorite_outline,
                  color: _cIndex == 1 ? Theme.of(context).primaryColor : null,
                ),
                onPressed: () {
                  setState(() {
                    _cIndex = 1;
                    _pageController.jumpToPage(1);
                  });
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.person_outlined,
                  color: _cIndex == 2 ? Theme.of(context).primaryColor : null,
                ),
                onPressed: () {
                  setState(() {
                    _cIndex = 2;
                    _pageController.jumpToPage(2);
                  });
                },
              ),
              SizedBox(),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: _cIndex,
      //   type: BottomNavigationBarType.shifting,
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.ac_unit, color: Color.fromARGB(255, 0, 0, 0)),
      //       label: 'ddd',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.ac_unit, color: Color.fromARGB(255, 0, 0, 0)),
      //       label: 'ddd',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.ac_unit, color: Color.fromARGB(255, 0, 0, 0)),
      //       label: 'ddd',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.access_alarm, color: Color.fromARGB(255, 0, 0, 0)),
      //       label: 'ddd',
      //     )
      //   ],
      //   onTap: (index) {
      //     _incrementTab(index);
      //   },
      // ),
    );
  }
}
