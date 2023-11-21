import 'package:flutter/material.dart';
import 'package:to_doapp/model/post_model.dart';
import 'package:to_doapp/services/post_services.dart';

class Post extends StatefulWidget {
  const Post({super.key});

  @override
  State<Post> createState() => _PostState();
}

PostServices post = PostServices();
List<Welcome> Listpost=[];
class _PostState extends State<Post> {
  @override
  void initState() {
    super.initState();
    // post.fetchdata();
    _loaddata();
  }

  Future<void> _loaddata() async{
    try{
      List<Welcome> postList= await post.fetchdata();
        setState(() {
          Listpost=postList;
        });
    }
    catch(e){
      print(e);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
         itemCount: Listpost.length,
          itemBuilder: (context,index){
            Welcome item=Listpost[index];
            return Card(
              child: ListTile(
                leading: CircleAvatar(child: Text(item.id.toString()),),
                title: Text(item.name),
                subtitle: Column(
                  children: [
                    Text(item.body),
                   const  SizedBox(height: 10,),
                    Text(item.postId.toString()),
                  ],
                ),
              ),
            );

      }),
    );
  }
}
