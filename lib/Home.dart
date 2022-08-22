import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Youtuber"),
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(
          color: Colors.red,
          opacity: 1
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.videocam),
              onPressed: (){}

          ),
          IconButton(
              icon: Icon(Icons.search),
              onPressed: (){}

          ),
          IconButton(
              icon: Icon(Icons.account_circle),
              onPressed: (){}

          )
        ],
      ),
      body: Container(
      ),
    );
  }
}
