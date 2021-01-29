import 'package:flutter/material.dart';

class BottomNavigationPage extends StatefulWidget {
  @override
  _BottomNavigationPageState createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  int _cIndex = 0;

  void _incrementTab(index) {
    setState(() {
      _cIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[],
        ),
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Icon(Icons.ac_unit_rounded),
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
