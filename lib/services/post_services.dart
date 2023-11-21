import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:to_doapp/model/post_model.dart';

class PostServices {
  Future<List<Welcome>> fetchdata() async {
    List<Welcome> listWelcome = [];
    final url = 'https://jsonplaceholder.typicode.com/comments?postId=1';
//      final uri =Uri.parse(url);
//      final response = await http.get(uri);
//      if(response.statusCode==200){
//     var l= json.decode(response.body);
//
//                for(var i in l){
//                Welcome a=  Welcome.fromJson(i);
//                listWelcome.add(a);
//                }
// }

    final dio = Dio();

    final response = await dio.get(url);

    if (response.statusCode == 200) {
      print(response.data);

      var l = response.data;
      print(l);

      for (var i in l) {
        Welcome a = Welcome.fromJson(i);
        listWelcome.add(a);
      }
    }
    return listWelcome;
  }
}
