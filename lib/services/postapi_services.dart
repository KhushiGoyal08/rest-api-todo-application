import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:to_doapp/model/post_api_model.dart';

class PostApiServices {
  Future<void> postData(PostApiModel body) async {
    final dio = Dio();
    final url = "https://jsonplaceholder.typicode.com/posts";
    // final uri = Uri.parse(url);
    // final http.Response response =await http.post(
    //   uri,
    //   headers: {
    //     'Content-Type': 'application/json'
    //   },
    //   body: jsonEncode(body.toJson()),
    // );
    // if(response.statusCode==201){
    //   print(response.body);
    //
    // }

    final response = await dio.post(
      url,
      data: body.toJson(),
    );
    if(response.statusCode==201){
      print(response.data);

    }
  }
}
