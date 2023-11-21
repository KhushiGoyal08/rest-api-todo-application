import 'package:flutter/material.dart';
import 'package:to_doapp/model/post_api_model.dart';
import 'package:to_doapp/services/postapi_services.dart';

class PostApi extends StatefulWidget {
  const PostApi({super.key});

  @override
  State<PostApi> createState() => _PostApiState();
}


class _PostApiState extends State<PostApi> {

  // final TextEditingController titleController =TextEditingController();
  // final TextEditingController bodyController =TextEditingController();
  final PostApiServices postApiServices=PostApiServices();
  PostApiModel postApiModel=PostApiModel();
  Future<void>  _loadData() async{
    PostApiModel postBody=postApiModel;
    await postApiServices.postData(postBody);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
               onChanged: (value){
                 postApiModel.title=value;
               },
                decoration: const InputDecoration(hintText: "Title"),

              ),
              const SizedBox(height: 16,),
              TextField(
                onChanged: (value){
                  postApiModel.body=value;
                },
                decoration: const InputDecoration(hintText: "Body"),
                keyboardType: TextInputType.multiline,
                minLines: 5,
                maxLines: 8,
              ),
              const SizedBox(height: 16,),
              ElevatedButton(onPressed: _loadData, child: Text("Submit"))
            ],
          ),
        ),
      ),
    );
  }
}
