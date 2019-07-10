import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  
  final Widget title;

  MyAppBar({this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(color: Colors.blue[500]),
      child: Text('$title'),
    );
  }

}