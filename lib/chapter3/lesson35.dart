import 'package:flutter/material.dart';

//图片及ICON


void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "图片及ICON",
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title:"图片及ICON"),
    );
  }
}


class MyHomePage extends StatefulWidget{

  MyHomePage({Key key,this.title}):super(key:key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();

}


class _MyHomePageState extends State<MyHomePage>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Container(
        padding: const EdgeInsets.all(10.0),
        child: new Column(
          children: <Widget>[
            new Image(
                image: AssetImage("assets/images/lake.jpg"),
                width: 200.0,
                height: 200.0,
            ),

            new Image.asset(
                "assets/images/lake.jpg",
                width: 200.0,
                height: 200.0,
            ),

            //从网络加载图片
            new Image(
                image: NetworkImage(
                  "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4"),
                  width:100.0,
                  height: 100.0,
            ),
            new Image.network(
              "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4",
              width: 100.0,
              height: 100.0,
              repeat: ImageRepeat.repeatY, //Y轴重复
            )
          ],
        ),
      ),
    );
  }

}
