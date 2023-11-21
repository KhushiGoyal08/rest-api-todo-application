// /All todo api call will be here
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:to_doapp/utils/snackbar_helper.dart';

import '../model/todo_model.dart';

class ToDoServices {
  static Future<bool> deleteById(String id) async {
    final dio=Dio();
    final url = 'https://api.nstack.in/v1/todos/$id';
    final response =await dio.delete(url);
    return response.statusCode == 200;
  }

  Future<List<ToDo>> fetchToDos2() async {
    final url = 'https://api.nstack.in/v1/todos?page=1&limit=10';
    final uri = Uri.parse(url);
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      // final json = jsonDecode(response.body);
      // final result = json['items'] as List;
      // return result;
      Iterable list = json.decode(response.body)['data'];
      print(response.body);
      print(list);
      if (list != null) {
        List<ToDo> l = list.map((model) => ToDo.fromJson(model)).toList();
        print(l);
        return l;
      } else {
        return [];
      }
    } else {
      throw Exception('Failed to get todos');
    }
  }

  Future<List<ToDo>> fetchToDos() async {
    final url = 'https://api.nstack.in/v1/todos?page=1&limit=10';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final List<ToDo> listTodo = [];
    if (response.statusCode == 200) {
      // print(response.body);
      List<dynamic> l = jsonDecode(response.body)['items'];
      // print("Data fetched is $l");
      for (var i in l) {
        ToDo todo = ToDo.fromJson(i);
        // ToDo todos=ToDo(title: i['title'], description: i['description']);
        listTodo.add(todo);
      }
     return listTodo;
    } else {
      throw Exception('Failed to get todos');
    }
  }

  Future<ToDo> updateTodo(ToDo todo) async {
    final dio=Dio();
    final url = 'https://api.nstack.in/v1/todos/${todo.id}';
    // final uri = Uri.parse(url);
    // final response = await http.put(uri,
    //     body: jsonEncode(todo.toJson()),
    //     headers: {'Content-Type': 'application/json'});
    // if (response.statusCode == 200) {
    //   print(json.decode(response.body)['data']);
    //   return ToDo.fromJson(json.decode(response.body)['data']);
    // } else {
    //   throw Exception('Failed to update todo');
    // }

    final response = await  dio.put(
      url,
      data: todo.toJson(),
    );
    if(response.statusCode==200){
      print(json.decode(response.data));
      return ToDo.fromJson(json.decode(response.data));
    }
    else {
        throw Exception('Failed to update todo');
      }
  }
  // static Future<bool> addTodo(Map body) async{
  //
  //   final url ='https://api.nstack.in/v1/todos';
  //   final uri =Uri.parse(url);
  //   final response =await http.post(uri, body: jsonEncode(body),
  //       headers: {'Content-Type':'application/json'});
  //
  //   return response.statusCode==201;
  // }

  Future<ToDo?> addTodo(ToDo todo) async {
    final url = 'https://api.nstack.in/v1/todos';
    final uri = Uri.parse(url);
    final response = await http.post(uri,
        body: jsonEncode(todo.toJson()),
        headers: {'Content-Type': 'application/json'});

    if(response.statusCode == 201) {
      Map<String, dynamic> sr = json.decode(response.body);
      // print(sr['data']);
      // return ToDo.fromJson(sr['data']); return ToDo.fromJson(sr['data']);
      return ToDo.fromJson(json.decode(response.body)['data']);
    } else {
      throw Exception('Failed to create todo');
    }
  }
}
