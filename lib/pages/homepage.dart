import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:to_doapp/pages/add.dart';
import 'package:http/http.dart' as http;
import 'package:to_doapp/services/todo_services.dart';
import 'package:to_doapp/widget/todo_card.dart';

import '../utils/snackbar_helper.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
bool isLoading=true;
List items=[];
class _HomePageState extends State<HomePage> {
  void initState() {
    super.initState();
    fetchToDo();
  }

  Future<void> deleteById(String id) async{
   //delete the item
  final isSuccess = await ToDoServices.deleteById(id);
    // remove the item from the list
    if(isSuccess){
      final filtered =items.where((element)=> element['_id']!=id).toList();
      setState(() {
        items=filtered;
      });
    }
  else{
    // deletion failed
      showErrorMessage(context,"Unable To delete");
    }
  }

  Future<void> fetchToDo() async {
   final response = await  ToDoServices.fetchToDos();

    if (response != null) {

      setState(() {
        items = response as List;
      });
    }

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ToDo List "),
      ),

      body: Visibility(
        visible: isLoading,
          child: Center(child: CircularProgressIndicator()),
        replacement:
         RefreshIndicator(
          onRefresh: fetchToDo,
          child: Visibility(
            visible: items.isNotEmpty,
            replacement: Center(child: Text('No ToDo Item',
            style: Theme.of(context).textTheme.headlineMedium,),
            ),
            child: ListView.builder(
              padding: EdgeInsets.all(8),
                itemCount:items.length,
                itemBuilder: (context,index){
                  final item =items[index] as Map;
                  final id =item['_id'] as String;
                  return ToDoCard(index: index, item: item, navigateEdit: navigateToEditPage,deleteById: deleteById,);
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
   fetchToDo();
  }

  void navigateToEditPage(Map item){
    final route= MaterialPageRoute(
      builder: (ctx)=> AddToDoPage(todo: item),
    );
    Navigator.push(context, route);
    fetchToDo();
  }




}


