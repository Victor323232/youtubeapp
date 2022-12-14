import 'package:flutter/material.dart';
import 'package:youtubeapp/CustomSearchDelegate.dart';
import 'package:youtubeapp/telas/Biblioteca.dart';
import 'package:youtubeapp/telas/EmAlta.dart';
import 'package:youtubeapp/telas/Inicio.dart';
import 'package:youtubeapp/telas/Inscriacao.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _indiciAtual = 0;
  String _resultado = ""; //atributo
  @override
  Widget build(BuildContext context) {
    List <Widget> telas = [
      Inicio(_resultado),
      EmAlta(),
      Inscricao(),
      Biblioteca()
    ];
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
              icon: Icon(Icons.search),
              onPressed: () async {
               String? res = await showSearch(
                   context: context,
                   delegate: CustomSearchDelegate());
               setState(() {
                 _resultado = res!; //resultado receba a res
               });
              },


          ),
          /*
          IconButton(
              icon: Icon(Icons.videocam),
              onPressed: (){}

          ),

          IconButton(
              icon: Icon(Icons.account_circle),
              onPressed: (){}

          )
          */
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(16), //espacamento
        child: telas [_indiciAtual],
      ),
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
              icon: Icon(Icons.subscriptions),
              label: 'Inscricoes'
          ),BottomNavigationBarItem(
              icon: Icon(Icons.folder),
              label: 'Biblioteca'
          )

        ],
      ),
    );
  }
}
