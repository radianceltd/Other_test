// 对齐与相对定位

import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "弹性布局",
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new CommonRoute(),
    );
  }
}

class CommonRoute extends StatefulWidget {
  @override
  _CommonRoute createState() => _CommonRoute();
}

class _CommonRoute extends State<CommonRoute> {
  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("dasdas"),
      ),

      body: new Wrap(
        children: <Widget>[
          DecoratedBox(
              decoration: BoxDecoration(color:Colors.red),
              child: Center(
                child:Text("xxx"),
              ),
            ),
          DecoratedBox(
              decoration: BoxDecoration(
                color:Colors.red,
              ),
              child: Center(
                widthFactor:1,
                heightFactor:2,
                child:Text("xxx"),
              ),
            ),
        ],
      )
    );
  }
}

/***
 * 
 * 
 * body: Container(
        height:120.0,
        width:120.0,
        color:Colors.blue[50],
        child:Align(
          alignment:Alignment.topRight,
          child:FlutterLogo(
            size: 60,
          ),
        ),
      ),

      body: Container(
        height:120.0,
        width:120.0,
        color:Colors.blue[50],
        child:Align(
          widthFactor: 2,
          heightFactor: 2,
          alignment: Alignment(2,0.0),
          child: FlutterLogo(
            size:60,
          ),
        ),
      ),

      body: Container(
        height:120.0,
        width:120.0,
        color:Colors.blue[50],
        child:Align(
          alignment: FractionalOffset(0.2, 0.6),
          child: FlutterLogo(
            size:60,
          ),
        ),
      ),
 * 
 * 
 */