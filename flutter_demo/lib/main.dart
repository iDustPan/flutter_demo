import 'package:flutter/material.dart';
import './widgets/MyAppBar.dart';
import './widgets/LayoutTutorial.dart';
import './widgets/Counter.dart';
import './widgets/RowDemo.dart';

main(List<String> args) {
  // runApp(App());
  // runApp(LayoutTutorial());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter'),
          ),
          body: Counter()),
    );
  }
}
