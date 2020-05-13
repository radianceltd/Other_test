//流式布局

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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


// Command + option + L

class CommonRoute extends StatefulWidget {
  @override
  _CommonRoute createState() => _CommonRoute();

  //TestFlowDelegate createState() => TestFlowDelegate(margin: EdgeInsets.all(10.0));

}


class _CommonRoute extends State<CommonRoute> {
  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("dasdas"),
      ),
//      body: new Wrap(
//        spacing: 8.0,
//        runSpacing: 4.0,
//        alignment: WrapAlignment.center,
//        children: <Widget>[
//          new Chip(
//              avatar: new CircleAvatar(backgroundColor: Colors.blue,child: Text("A"),),
//              label: new Text("Hamiltion"),
//          ),
//          new Chip(
//              label: new Text("Lafayette"),
//              avatar: new CircleAvatar(backgroundColor: Colors.blue,child: Text("B"),),
//          ),
//          new Chip(
//              label: new Text("Mulligan"),
//              avatar: new CircleAvatar(backgroundColor: Colors.blue,child: Text("C"),),
//          ),
//          new Chip(
//              label: new Text("Laurens"),
//              avatar: new CircleAvatar(backgroundColor: Colors.blue,child: Text("D"),),
//          ),
//        ],
//      ),
//

        body: new Flow(
            delegate: TestFlowDelegate(margin:EdgeInsets.all(11.0)),
          children: <Widget>[
            new Container(width: 80.0,height: 80.0,color: Colors.red,),
            new Container(width: 80.0,height: 80.0,color: Colors.green,),
            new Container(width: 80.0, height:80.0, color: Colors.blue,),
            new Container(width: 80.0, height:80.0,  color: Colors.yellow,),
            new Container(width: 80.0, height:80.0, color: Colors.brown,),
            new Container(width: 80.0, height:80.0,  color: Colors.purple,),
          ],
        ),
    );
  }

}


class TestFlowDelegate extends FlowDelegate{
  EdgeInsets margin = EdgeInsets.zero;
  TestFlowDelegate({this.margin});

  @override
  void paintChildren(FlowPaintingContext context) {
    var x = margin.left;
    var y = margin.top;

    for(int i=0;i<context.childCount;i++){
      var w = context.getChildSize(i).width+x+margin.right;

      if(w<context.size.width){
        context.paintChild(i, transform: new Matrix4.translationValues(x, y, 0.0));
        x = w +margin.left;
      }else{
        x = margin.left;
        y += context.getChildSize(i).height+margin.top+margin.bottom;

        context.paintChild(i,
        transform: new Matrix4.translationValues(x, y, 0.0));
        x += context.getChildSize(i).width+margin.left+margin.right;
      }
    }
  }

  @override
  Size getSize(BoxConstraints constraints) {
    return Size(double.infinity, 200.0);
  }

  @override
  bool shouldRepaint(FlowDelegate oldDelegate) {
    return oldDelegate != this;
  }

}

