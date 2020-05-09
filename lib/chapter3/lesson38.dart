import 'package:flutter/material.dart';


void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "进度条",
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new ProgressRoute(),
    );
  }
}



//进度条
class ProgressRoute extends StatefulWidget{
  @override
  _ProgressRouteState createState()=> _ProgressRouteState();

}


class _ProgressRouteState extends State<ProgressRoute> with SingleTickerProviderStateMixin{

  AnimationController _animationController;

  @override
  void initState() {
    _animationController = new AnimationController(vsync: this, duration: Duration(seconds: 3));
    _animationController.forward();
    _animationController.addListener(()=>setState(()=>{}));

    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
        title: new Text("dasdas"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(16),
                child: CircularProgressIndicator(
                  backgroundColor: Colors.grey[200],
                  valueColor: ColorTween(begin: Colors.grey, end:Colors.blue).animate(_animationController),
                  value: _animationController.value,
                ),
              ),
            ],
          ),
        )
    );
  }


}