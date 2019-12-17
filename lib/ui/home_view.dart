import 'package:flutter/material.dart';
import 'package:web_test/ui/base_widget.dart';
import 'package:web_test/ui/sizing_information.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseWidget(builder: (context, sizingInformation){
      return Scaffold(
        body:  Container(
        
          child: AspectRatio(aspectRatio: 1.618,
        child: Row(children: <Widget>[
          Flexible(
            flex: 1000,
            child: Container(
              color: Colors.blueGrey[300],
              child: BaseWidget(builder: (context,sizingInformation){
                    return Container(
                      color: Colors.blueGrey[500],
                      child: Text(sizingInformation.toString()),
                    );
                  },),
            ),
          ),
          Flexible(
            flex: 1618,
            child: Container(
              color: Colors.blueGrey[500],
               child: Text(sizingInformation.toString()),
            ),
          )
        ],),),
       
          // child: AspectRatio(
          //   aspectRatio: 1618,
          //   child: Row(
          //     children: <Widget>[
          //       Flexible(
          //         flex: 1000,
          //         child: Container(
          //           color: Colors.blueGrey[300],
          //         ),
          //       ),
          //       Flexible(
          //         flex: 1618,
          //         child: BaseWidget(builder: (context,sizingInformation){
          //           return Container(
          //             color: Colors.blueGrey[500],
          //             child: Text(sizingInformation.toString()),
          //           );
          //         },),
          //       ),
          //     ],
          //   ),
          // ),
        ),
      );
    });
  }
}

// Center(
//           child: Text(sizingInformation.toString()),
//         ),