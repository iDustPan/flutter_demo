import 'package:flutter/material.dart';
import './HomePage.dart';

class TabApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TabBarDemo(),
    );
  }
}

class TabBarDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TabBarState();
  }
}

class _TabBarState extends State<TabBarDemo> {
  var _selectedIndex = 0;

  void _tapItem(index) {
    setState(() {
      _selectedIndex = index;
      if (index == 0) {
        _currentPage = HomePage();
      } else {
        _currentPage = Text('test');
      }
    });
  }

  Widget _currentPage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xfff7f7f7),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), title: Text('Cart')),
        ],
        currentIndex: _selectedIndex,
        onTap: _tapItem,
        unselectedItemColor: Color(0xff999999),
        selectedItemColor: Color(0xff333333),
      ),
      body: Center(
        child: _currentPage,
      ),
    );
  }
}
