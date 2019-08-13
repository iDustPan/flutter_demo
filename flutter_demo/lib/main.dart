import 'package:flutter/material.dart';
import './widgets/MyAppBar.dart';
import './widgets/LayoutTutorial.dart';
import './widgets/Counter.dart';
import './widgets/RowDemo.dart';
import './widgets/BXLTabBar.dart';

main(List<String> args) {
  // runApp(App());
  // runApp(LayoutTutorial());
  runApp(TabApp());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Flutter'),
            ),
            body: Counter()));
  }
}
