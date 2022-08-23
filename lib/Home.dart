import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _indiciAtual = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
            "images/youtube.png",
          width: 98,
          height: 22,
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.grey,
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
      body: Container(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indiciAtual,
        onTap: (indice){
          setState(() {
             _indiciAtual = indice;
          });
        },
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.red,
        items:  [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
            label: 'Inicio'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.whatshot),
            label: 'Em alta'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Inscricoes'
          )

        ],
      ),
    );
  }
}
