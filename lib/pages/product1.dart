import 'package:flutter/material.dart';
import 'package:to_doapp/services/product1_services.dart';

import '../model/product1_model.dart';

class Product1 extends StatefulWidget {
  const Product1({super.key});

  @override
  State<Product1> createState() => _Product1State();
}

final Product1Services product = Product1Services();

class _Product1State extends State<Product1> {
  List<Product> productlist = [];
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    try {
      final products = await product.fetchdata();
      setState(() {
        productlist = products;
      });
    } catch (e) {
      print('Error loading todos: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: productlist.length,

          itemBuilder: (context,index){
          Product  item=productlist[index];
          return Card(
            child: ListTile(
              leading: CircleAvatar(backgroundImage: NetworkImage(item.images[0]),),
              title: Text(item.title),
              subtitle: Column(
                children: [
                  Text(item.description),
                  Text(item.stock.toString()),
                ],
              ),
            ),
          );
        }
      ),
    );
  }
}
