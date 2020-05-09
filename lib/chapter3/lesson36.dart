
import 'package:flutter/material.dart';


//单选开关和复选框

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "开关和复选框",
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new SwitchAndCheckBoxTestRouteState(title: "111111",),
    );
  }
}

class SwitchAndCheckBoxTestRouteState extends StatefulWidget{
  SwitchAndCheckBoxTestRouteState({Key key,this.title}):super(key:key);
  final String title;
  @override
  _SwitchAndCheckBoxTestRouteState createState()=> new _SwitchAndCheckBoxTestRouteState();
}


class _SwitchAndCheckBoxTestRouteState extends State<SwitchAndCheckBoxTestRouteState>{
  bool _switchSelected = true;
  bool _checkboxSelected = true;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(widget.title),
        ),
        body: new Column(
          children: <Widget>[
            Switch(
              value: _switchSelected,
              onChanged: (value){
                setState(() {
                  _switchSelected = value;
                });
              },
            ),

            Checkbox(
              value: _checkboxSelected,
              activeColor: Colors.red,
              onChanged: (value){
                setState(() {
                  _checkboxSelected = value;
                });
              },
            )
          ],
        ),
    );
  }


}