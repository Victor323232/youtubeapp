import 'package:http/http.dart'as http;
import 'dart:convert';

import '../model/Video.dart';
const CHAVES_YOUTUBE_API = "AIzaSyAIDnl6ze3OHMak5oLN1Qj7Fg8gOb45Xu8";
const ID_CANAL = "UC6aMp6QGYgGEUdHvZBhZV7w";
const URL_BASE = "https://www.googleapis.com/youtube/v3/";

class Api {
  pesquisar(String pesquisa) async{

    http.Response response = await http.get(
      Uri.parse( URL_BASE + "search"
          "?part=snippet"
          "&type+video"
          "&maxResults=20"
          "&order=date"
          "&key=$CHAVES_YOUTUBE_API"
          "&channelID= $ID_CANAL"
          "&q=$pesquisa"
      )
    );
    if(response.statusCode==200){
      Map <String, dynamic> dadosJson = json.decode(response.body);
      List<Video>videos =dadosJson["items"].map<Video>( //melhor maneira de fazer
          (map){  //convercao de maops para um video
            return Video.fromJson(map);
          }
      ).toList();//convercao desse videos para uma lista;

      /*for (var video in dadosJson["items"]){  maneira de fazer
      }*/
      print("Resultado:"+ dadosJson["items"] [0] ["snippet"]["title"].toString());

    }else{

    }
  }
}