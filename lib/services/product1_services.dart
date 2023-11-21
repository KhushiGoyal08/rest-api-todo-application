import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:to_doapp/model/product1_model.dart';

class Product1Services {
  // Future<List<Product>> fetchdata() async {
  //   final url = "https://dummyjson.com/products";
  //   final uri = Uri.parse(url);
  //   final response = await http.get(uri);
  //   // print(response.body);
  //   final List<Product> listproduct = [];
  //   if (response.statusCode == 200) {
  //     List<dynamic> l = json.decode(response.body)['products'];
  //     // print(l);
  //     for (var i in l) {
  //       Product product = Product.fromJson(i);
  //       listproduct.add(product);
  //     }
  //     return listproduct;
  //   }
  //   else{
  //     return [];
  //   }
  // }

  Future<List<Product>> fetchdata() async{
    final dio=Dio();
      final url = "https://dummyjson.com/products";
     final response = await dio.get(url);
    final List<Product> listproduct = [];
     if(response.statusCode==200){
       // var l = json.decode(response.toString())['products'];
       var l= response.data['products'];
       print(l);
       // print(l);
           for (var i in l) {
             Product product = Product.fromJson(i);
             listproduct.add(product);
           }
           return listproduct;
     }
    return [];

  }
}
