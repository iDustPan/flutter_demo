import 'package:flutter/material.dart';

class RowDemo extends StatelessWidget {
  RowDemo({this.title});

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigation menu',
            onPressed: null, // null disables the button
          ),
          // Expanded expands its child to fill the available space.
          Expanded(
            child: title,
          ),
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
      decoration: BoxDecoration(color: Colors.blue[500]),
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      margin: const EdgeInsets.all(15),
    );
  }
}
