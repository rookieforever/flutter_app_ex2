import 'package:flutter/material.dart';
import 'main.dart';
class News{
  final String  title;
  final String description;
  final String picUrl;
  var id;
  var ctime;
  var type;
  var url;
  News(this.title,this.description,this.picUrl);
}

class detailPageState extends StatelessWidget{
  final News news;
  detailPageState({Key key, @required this.news}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${news.title}'),
//          leading:IconButton(
//            icon: Icon(Icons.keyboard_arrow_left),
//
//          )
      ),
      body: Column(
        children: <Widget>[
          Image.network(
            '${news.picUrl}',width: 400,
            height: 300),
          Text('${news.description}'),
        ],
      ),
    );
  }
}