import 'package:dio/dio.dart';
import 'package:to_doapp/model/getapidio.dart';

class DioApiService {
  final dio = Dio();
  // Get Api Call Method

  List<GetApiDio> products = [];
  Future<List<GetApiDio>> fetchapi() async {
    final response = await dio.get("https://fakestoreapi.com/products");
    final product = response.data;
    // print(product);
    for (var i in product) {
      GetApiDio l = GetApiDio.fromJson(i);
      products.add(l);
    }

    if (response.statusCode == 200) {
      return products;
    } else {
      return [];
    }
  }

  // Post Api Service

  Future<void> postApi(GetApiDio data) async {
    final response = await dio.post("https://fakestoreapi.com/products",
        data: data.toJson());
    print(response.statusCode);
    if(response.statusCode==201){
      print(response.data);
    }
  }

  Future<void> deleteApi(String id) async{
    final response =await dio.delete("https://fakestoreapi.com/products/$id");
    print(response.statusCode);
    print(response);
  }
}

// put api

