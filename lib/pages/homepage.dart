import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:to_doapp/pages/add.dart';
import 'package:http/http.dart' as http;
import 'package:to_doapp/pages/post_api.dart';
import 'package:to_doapp/pages/postpage.dart';
import 'package:to_doapp/pages/product1.dart';
import 'package:to_doapp/services/todo_services.dart';
import 'package:to_doapp/widget/todo_card.dart';

import '../model/todo_model.dart';
import '../utils/snackbar_helper.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
bool isLoading=true;
// List items=[];
List<ToDo> _todos=[];
final ToDoServices _toDoServices =ToDoServices();
class _HomePageState extends State<HomePage> {
  void initState() {
    super.initState();
    // fetchToDo();
    // _toDoServices.fetchToDos();
    _loadTodos();
  }

  Future<void> deleteById(String id) async{
   //delete the item
  final isSuccess = await ToDoServices.deleteById(id);
    // remove the item from the list
    if(isSuccess){
      // final filtered =_todos;
      // setState(() {
      //   // _todos=filtered;
      // });
      _loadTodos();
    }
  else{
    // deletion failed
      showErrorMessage(context,"Unable To delete");
    }
  }

  // Future<void> fetchToDo() async {
  //  final response = await  ToDoServices.fetchToDos();
  //
  //   if (response != null) {
  //
  //     setState(() {
  //       items = response as List;
  //     });
  //   }
  //
  // }
  Future<void> _loadTodos() async {
    try {

      final todos = await _toDoServices.fetchToDos();
      setState(() {
        _todos = todos;
      });
    } catch (e) {
      print('Error loading todos: $e');
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ToDo List "),
        actions: [
        Padding(
          padding: const EdgeInsets.all(8),
          child: ElevatedButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const PostApi()));
          }, child: Text("Post")),
        )  ,
          Padding(
            padding: const EdgeInsets.all(8),
            child: ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const Post()));
            }, child: Text("Get")),
          )  ,
          Padding(
            padding: const EdgeInsets.all(8),
            child: ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const Product1()));
            }, child: Text("Get")),
          )  ,
        ],
      ),

      body: Visibility(
        visible: isLoading,
          child: Center(child: CircularProgressIndicator()),
        replacement:
         RefreshIndicator(
          onRefresh: _loadTodos,
          child: Visibility(
            visible: _todos.isNotEmpty,
            replacement: Center(child: Text('No ToDo Item',
            style: Theme.of(context).textTheme.headlineMedium,),
            ),
            child: ListView.builder(
              padding: EdgeInsets.all(8),
                itemCount:_todos.length,
                itemBuilder: (context,index){
                  ToDo item =_todos[index] ;

                  return ToDoCard(index: index, item: item /*navigateEdit: navigateToEditPage*/,deleteById: deleteById,);
            }),
          ),

      ),
      ),
      floatingActionButton: FloatingActionButton.extended(onPressed: () {
        navigateToAddPage(context);
      }, label: const Text("Add Todo")),
    );
  }

Future<void> navigateToAddPage(BuildContext context) async{
    final route= MaterialPageRoute(
      builder: (ctx)=> AddToDoPage(),
    );
   await Navigator.push(context, route);
   setState(() {
     isLoading =false;
   });
   _loadTodos();
  }

  void navigateToEditPage(Map item){
    final route= MaterialPageRoute(
      builder: (ctx)=> AddToDoPage(),
    );
    Navigator.push(context, route);
    _loadTodos();
  }


}


