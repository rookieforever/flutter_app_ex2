import 'package:flutter/material.dart';
import 'main.dart';
class helpPage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() =>helpPageState();
}
class helpPageState extends State<helpPage>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('帮助文档'),
//          leading:IconButton(
//            icon: Icon(Icons.keyboard_arrow_left),
//
//          )
      ),
      body: Column(
      children: <Widget>[
        Text('此处是帮助文档'),
      ],
      ),
    );
  }
}