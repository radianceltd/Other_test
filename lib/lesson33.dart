
import 'package:flutter/material.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return new MaterialApp(
        title: '文本的样式',
        theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: '文本的样式'),
    );
  }
}


class MyHomePage extends StatefulWidget{

  MyHomePage({Key key, this.title}) : super(key:key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();

}



class _MyHomePageState extends State<MyHomePage>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),

      body:


      new Container(
        padding: const EdgeInsets.all(8.0),
        child: new Column(
          children: <Widget>[
            new DefaultTextStyle(
              //1.设置文本默认样式
              style: TextStyle(
                color:Colors.red,
                fontSize: 20.0,
              ),
              textAlign: TextAlign.start,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("hello world"),
                  Text("I am Jack"),
                  Text("I am Jack",
                    style: TextStyle(
                        inherit: false, //2.不继承默认样式
                        color: Colors.grey
                    ),
                  ),
                ],
              ),
            ),
            new Text(
                "Hello world! I'm Jack."*4,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            new Text(
                'Hello world',
              textScaleFactor: 1.5,
            )
          ],
        )
      ),
    );
  }




}





