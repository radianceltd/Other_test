//层叠布局 Stack、Positioned

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
  _CommonRoute1 createState() => _CommonRoute1();
}

class _CommonRoute extends State<CommonRoute> {
  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("dasdas"),
      ),
      body: ConstrainedBox(
          constraints: BoxConstraints.expand(),
          child: Stack(
            alignment:Alignment.center,
            children: <Widget>[
              Container(child:Text("Hello world",style:TextStyle(color:Colors.white)),
                color: Colors.red,
              ),
              Positioned(
                left: 18.0,
                child: Text("I am Jack"),
              ),
              Positioned(
                top: 18.0,
                child: Text("Your friend"),
              )
            ],
          ),
        ),
    );
  }
}


class _CommonRoute1 extends State<CommonRoute> {
  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("dasdas"),
      ),
      body: ConstrainedBox(
          constraints: BoxConstraints.expand(),
          child: Stack(
            alignment:Alignment.center,
            fit: StackFit.expand,
            children: <Widget>[
              Positioned(
                child: Text("I am Jack"),
                left: 18.0,
              ),
              Container(
                child: Text("Hello world",style:TextStyle(color: Colors.white)),
                color: Colors.blue,
              ),
              Positioned(
                top:18.0,
                child: Text("Your friend"),
              ),
            ],
          ),
        ),
    );
  }
}
