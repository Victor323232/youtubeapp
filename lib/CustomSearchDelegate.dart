import 'package:flutter/material.dart';
class CustomSearchDelegate extends SearchDelegate <String> {
  @override
  List<Widget>? buildActions(BuildContext context) {

    return [
      IconButton(
          onPressed: (){
            query = ""; //limpar a pesquisa

          },
          icon: Icon(Icons.clear),
      ),

    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return
      IconButton(
        onPressed: (){
          close(context, null);
        },
        icon: Icon(Icons.arrow_back),
      );


  }

  @override
  Widget buildResults(BuildContext context) {
    close(context, query ); //fechar essa tela e passa essa query
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    return Container();
  }

}