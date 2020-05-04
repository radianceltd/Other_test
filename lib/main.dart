import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'dart:developer';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';


/*
    command+option+L 代码格式化 MAC的
    Ctrl+Alt+L 代码格式化 Windows的
    本节学习布局
 */

void someFunction(double offset) {
  debugger(when: offset > 30.0);
  // ...
}


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

    @override
    Widget build(BuildContext context){
      return new MaterialApp(
        title: 'Flutter Demo',
        //initialRoute: "/",
        theme: new ThemeData(
          primarySwatch: Colors.blue,
        ),

        routes: {
          "tip2":(context){
            return TipRoute(text: ModalRoute.of(context).settings.arguments);
          },
          "new_page":(context) => NewRoute(),
         // "/":(context) => MyHomePage(title: "Flutter Demo Home Page"),
        },

        home: new MyHomePage(title: "Flutter Demo Home Page"),
      );
    }
}

class AppHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Material(
      child: new Center(
        child: new FlatButton(
            onPressed:(){
              debugDumpApp();
              },
            child: new Text('Dump app'),
        ),
      ),
    );
  }
}


class RandomWordsWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final wordPair = new WordPair.random();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: new Text(wordPair.toString()),
    );
  }
}



class EchoRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var args=ModalRoute.of(context).settings.arguments;
    return null;
  }
}


class MyHomePage extends StatefulWidget{

  MyHomePage({Key key, this.title}) : super(key:key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();

}


class _MyHomePageState extends State<MyHomePage>{
  int _counter = 0;

  void _incrementCounter(){
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body:
      new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RandomWordsWidget(),
            new Text('Hello world'),
            new Text(
                '$_counter',
              style: Theme.of(context).textTheme.headline,
            ),FlatButton(
              child: Text(
                  "open new route",
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.blue,
                  ),
              ),
              //textColor: Colors.blue,
              onPressed: (){
                //传递参数
                Navigator.of(context).pushNamed("new_page", arguments: "hi");
                //Navigator.pushNamed(context, 'new_page');
//                Navigator.push(context,
//                    MaterialPageRoute(builder: (context){
//                      return RouterTestRoute();
//                }));
              },
            ),
          ],

        ),
      ),
      
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ),
    );
  }
}


class NewRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("New route"),
      ),
      body: Center(
        child: Text('This is new route'),
      ),
    );
  }
}


class TipRoute extends StatelessWidget{

  TipRoute({
    Key key,
    @required
    this.text,
  }):super(key:key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('提示'),
      ),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(text),
              RaisedButton(
                onPressed: ()=>Navigator.pop(context,'我是返回值'),
                child: Text('返回'),
              )
            ],
          ),
        ),
      ),
    );
  }
}


class RouterTestRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        onPressed: () async{
          var result = await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context){
                  return TipRoute(
                    text: '我是提示*******',
                  );
                }
              )
          );
          print("路由器返回值:$result");
        },
        child: Text("打开提示页"),
      ),
    );
  }
}



/*

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Widget titleSection = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Row(
        children: [
          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: new Text(
                    'Oeschinen Lake Campground',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                new Text(
                  'Kandersteg, Switzerland',
                  style: new TextStyle(
                      color: Colors.grey[500]
                  ),
                )
              ],
            ),
          ),
          new Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          new Text('41')
        ],
      ),
    );
  }



*/







