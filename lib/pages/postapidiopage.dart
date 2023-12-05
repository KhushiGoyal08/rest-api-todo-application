

import 'package:flutter/material.dart';
import 'package:to_doapp/model/getapidio.dart';
import 'package:to_doapp/services/apidiocall.dart';

class PostApiDioPage extends StatefulWidget {
 const PostApiDioPage({super.key});

  @override
  State<PostApiDioPage> createState() => _PostApiDioPageState();
}

class _PostApiDioPageState extends State<PostApiDioPage> {
  GetApiDio   postobject=GetApiDio(rating: Rating(rate: 1,count: 2));
  DioApiService dioApiPost=DioApiService();

  Future<void>  _postData() async{
   GetApiDio postbody =postobject;
      await dioApiPost.postApi(postbody);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              TextField(
                onChanged: (value) {

                    postobject.title=value;

                },
                decoration: const InputDecoration(labelText: "title"),
              ),
              TextField(
                onChanged: (value) {

                   postobject.description=value;

                },
                decoration: const InputDecoration(labelText: "description"),
              ),
              TextField(
                onChanged: (value) {

                    postobject.price=double.parse(value);

                },
                decoration: const InputDecoration(labelText: "price"),
              ),
              ElevatedButton(onPressed: _postData, child: const Text("Submit"))
            ],
          ),
        ),
      ),
    );
  }
}
