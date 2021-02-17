import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // VerticalDirection.up, // childerns are aligned bottom to top
            children: [
              Container(
                //margin: EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
                width: 100.0,
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                color: Colors.blue,
                child: Text("Hello World"),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 100.0,
                    width: 100.0,
                    color: Colors.orange,
                  ),
                  Container(
                    height: 100.0,
                    width: 100.0,
                    color: Colors.green,
                  ),
                ],
              ),
              Container(
                //alignment: Alignment.center,
                //margin: EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
                margin: EdgeInsets.only(bottom: 5.0, top: 5.0),
                width: 100.0,
                color: Colors.green,
                child: Text("Container 2"),
              ),
              /* Container(
                width: double.infinity,
                height: 10.0,
                color: Colors.black,
              ) */ // makes rest of the container stretch
            ],
          ),
        ),
      ),
    );
  }
}
