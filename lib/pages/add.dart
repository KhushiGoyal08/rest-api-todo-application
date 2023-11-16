import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:to_doapp/services/todo_services.dart';

import '../utils/snackbar_helper.dart';

class AddToDoPage extends StatefulWidget {
   AddToDoPage({super.key, this.todo});
final Map? todo;
  @override
  State<AddToDoPage> createState() => _AddToDoPageState();
}

class _AddToDoPageState extends State<AddToDoPage> {
  TextEditingController titlecontroller = TextEditingController();
  TextEditingController descriptioncontroller = TextEditingController();
  bool isEdit =false;
  @override
  void initState(){
    super.initState();
    final todo =widget.todo;
    if(widget.todo !=null){
      isEdit=true;
      final title =  todo?['title'];
      final desc= todo?['description'];
      titlecontroller.text=title;
      descriptioncontroller.text=desc;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(isEdit ?"Edit ToDo":"Add ToDo"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          TextField(
            controller: titlecontroller,
            decoration: const InputDecoration(hintText: "Title"),
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            controller: descriptioncontroller,
            decoration: const InputDecoration(hintText: "Description"),
            keyboardType: TextInputType.multiline,
            minLines: 5,
            maxLines: 8,
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(onPressed:isEdit? updateData: submitData, child:  Text(isEdit?"Update":"Submit"))
        ],
      ),
    );
  }

  Future<void> updateData() async{

    final todo = widget.todo;
    if(todo ==null){
      return;
    }
    final id = todo['_id'];

    final title = titlecontroller.text;
    final description = descriptioncontroller.text;
    final body = {
      "title": title,
      "is_completed": false,
      "description": description,
    };
    // submit updated data to the server
final isSuccess =await ToDoServices.updateTodo(id, body);


    if (isSuccess) {
      showSuccessMessage(context,"Updation Success");
    } 
  }

  // Form Handling---------
  Future<void> submitData() async {
    // Get the data from the form
    final title = titlecontroller.text;
    final description = descriptioncontroller.text;
    final body = {
      "title": title,
      "is_completed": false,
      "description": description,
    };
    // Submit the data to the server
    final isCreated = await ToDoServices.addTodo(body);
    print(isCreated);
    // show success or final message based on the status
    if (isCreated) {
      titlecontroller.text="";
      descriptioncontroller.text="";
      showSuccessMessage(context,"Creation Success");
    } else {
      showErrorMessage(context,"Creation Failed");
    }
  }


}