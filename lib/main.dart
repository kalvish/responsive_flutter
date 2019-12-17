import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:web_test/ui/home_view.dart';

main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    ),
  );
}

class ScreenAdjustingDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (BuildContext buildContext, BoxConstraints constraints){
      return constraints.maxWidth>=600 
      ? AspectRatio(aspectRatio: 1.618,
        child: Row(children: <Widget>[
          Flexible(
            flex: 1000,
            child: Container(
              color: Colors.blueGrey[300],
            ),
          ),
          Flexible(
            flex: 1618,
            child: Container(
              color: Colors.blueGrey[500],
            ),
          )
        ],),)
        : AspectRatio(aspectRatio: 1.618,
        child: Column(children: <Widget>[
          Flexible(
            flex: 1000,
            child: Container(
              color: Colors.blueGrey[300],
            ),
          ),
          Flexible(
            flex: 1618,
            child: Container(
              color: Colors.blueGrey[500],
            ),
          )
        ],),);
    },);
  }
}

