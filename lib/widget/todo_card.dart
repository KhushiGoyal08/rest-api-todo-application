import 'package:flutter/material.dart';
import 'package:to_doapp/services/todo_services.dart';

import '../model/todo_model.dart';

class ToDoCard extends StatelessWidget {
  final  int index;
  final ToDo item;
  // final Function(Map) navigateEdit;
  final Function(String) deleteById;
      ToDoCard(
      {
        super.key,
        required this.index,
        required this.item,
        // required this.navigateEdit,
        required this.deleteById
      });

  @override
  Widget build(BuildContext context) {
    return  Card(
      child: ListTile(
        leading: Text('${index +1}'),
        title: Text(item.title),
        subtitle: Text(item.description),

        trailing: PopupMenuButton(
          onSelected: (value){
            if(value=='edit'){
              //open edit page
          // navigateEdit;
            }
            else if(value=='delete'){
              //delete and remove the item
              deleteById(item.id as String);
            }
          },
          itemBuilder: (context){
            return [
              const  PopupMenuItem(child: Text('Edit'),value: 'edit',),
              const  PopupMenuItem(child: Text('Delete'),value: 'delete',)
            ];
          },
        ),
      ),
    );
  }
}
