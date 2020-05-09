
import 'package:flutter/material.dart';


void main() => runApp(MyApp());


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '按钮学习',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: "按钮学习",),
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
      body: new Container(
        padding: const EdgeInsets.all(8.0),
        child: new Column(
          children: <Widget>[
            new RaisedButton(
              child: Text("normal"),
              onPressed: (){},
            ),

            new FlatButton(
                onPressed: (){},
                child: Text("normal"),
            ),

            new OutlineButton(
                onPressed: (){},
              child: Text("normal"),
            ),

            new IconButton(
                icon: Icon(Icons.thumb_up),
                onPressed: (){}),
            //带图标的按钮
            new RaisedButton.icon(
                icon: Icon(Icons.send),
                label: Text("发送"),
                onPressed: _pressed,
            ),
            new FlatButton(
                color: Colors.blue,
                highlightColor: Colors.blue[700],
                colorBrightness: Brightness.dark,
                splashColor: Colors.grey,
                onPressed: _pressed,
                child: Text("Submit"),
                shape: RoundedRectangleBorder(
                  borderRadius:BorderRadius.circular(20.0),
                ),
            ),
          ],
        ),
      ),
    );
  }
}



void _pressed(){
  print('打开打开了');
}


