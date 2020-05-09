
import 'package:flutter/material.dart';


//输入框及表单


void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "输入框及表单",
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new FocusTestRoute(),
    );
  }
}


class TextFieldTestState extends StatefulWidget{
  TextFieldTestState({Key key,this.title}):super(key:key);
  final String title;
  @override
  _TextFieldTestState createState()=> new _TextFieldTestState();
}


class _TextFieldTestState extends State<TextFieldTestState>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Column(
        children: <Widget>[
          TextField(
            autofocus: true,
            decoration: InputDecoration(
              labelText: "用户名",
              hintText: "用户名或者邮箱",
              prefixIcon: Icon(Icons.person)
            ),
          ),
          TextField(
            decoration: InputDecoration(
              labelText: "密码",
              hintText: "你的登录密码",
              prefixIcon: Icon(Icons.lock)
            ),
            obscureText: true,
          )
        ],
      ),
    );
  }

}


class FocusTestRoute extends StatefulWidget{
  @override
  _FocusTestRouteState createState()=>new _FocusTestRouteState();

}

//══════════════════════════════════════════════════════════
//用户登录 程序


class _FocusTestRouteState extends State<FocusTestRoute>{
  //FocusNode focusNode1 = new FocusNode();
  //FocusNode focusNode2 = new FocusNode();

  TextEditingController _unameController = new TextEditingController();
  TextEditingController _pwdController = new TextEditingController();

  GlobalKey _formKey = new GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("我的世界"),
        ),
       body: new Padding(
             padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
             child:Form(
               key: _formKey,
               autovalidate: true,
               child: Column(
                 children: <Widget>[
                   TextFormField(
                     autofocus: true,
                     controller: _unameController,
                     decoration: InputDecoration(
                       labelText: "用户名",
                       hintText: "用户名或邮箱",
                       icon: Icon(Icons.person)
                     ),
                     validator: (v){
                       return v.trim().length>0 ? null:"用户名不能为空";
                     },
                   ),
                   TextFormField(
                     controller: _pwdController,
                     decoration: InputDecoration(
                       labelText: "密码",
                       hintText: "你的登录密码",
                       icon: Icon(Icons.lock)
                     ),
                     obscureText: true,
                     validator: (v){
                       return v.trim().length>5?null:"密码不能少于6位";
                     },
                   ),

                   Padding(
                     padding: const EdgeInsets.only(top:28.0),
                     child: Row(
                       children: <Widget>[
                         Expanded(
                             child: RaisedButton(
                               padding: EdgeInsets.all(15.0),
                                 child: Text("登录"),
                                 color: Theme.of(context).primaryColor,
                                 onPressed: (){
                                    if((_formKey.currentState as FormState).validate()){
                                      //通过验证
                                      print("12234324234234234232");
                                    }
                                 }
                             )
                         )
                       ],
                     ),
                   )

                 ],
               ),
             )

             ),
           );
    }


}





