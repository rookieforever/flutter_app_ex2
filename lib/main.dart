import 'package:flutter/material.dart';
import 'package:flutterappex2/userPage.dart';
import 'package:flutterappex2/newsPage.dart';
import 'helpPage.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: '新闻浏览器'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  MyHomePageState createState() => MyHomePageState();
}
class MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });

  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2,
      initialIndex: 0,
      child:
    Scaffold(
        appBar: AppBar(
          leading:IconButton(
            icon: Icon(Icons.announcement),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>helpPage()));
            },
          ) ,
            title: Text(widget.title),
          bottom: TabBar(
            tabs: [
              Tab(text: '新闻界面',),
              Tab(text: '用户界面',),
            ],
          )

        ),
        body: TabBarView(
          children: [
            showNews(),
            showUserInfo(),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
