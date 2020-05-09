
import 'package:flutter/material.dart';

//第四章 布局类型


//布局类型

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "进度条",
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new CommonRoute(),
    );
  }
}


class CommonRoute extends StatefulWidget{
  @override
  _CommonRoute createState() => _CommonRoute();

}

class _CommonRoute extends State<CommonRoute>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("dasdas"),
        ),
        body:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Hello world!"),
                Text("I am Jack"),
              ],
            ),
            
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Hello world!"),
                Text("I am Jack"),
              ],
            ),
            
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              verticalDirection: VerticalDirection.up,
              children: <Widget>[
                Text("Hello world", style: TextStyle(fontSize: 30.0),),
                Text("I am Jack"),
              ],
            ),
            
            
          ],
        ),
    );
  }

}





