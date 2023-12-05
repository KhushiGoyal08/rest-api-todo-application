import 'package:flutter/material.dart';
import 'package:to_doapp/model/getapidio.dart';
import 'package:to_doapp/pages/postapidiopage.dart';
import 'package:to_doapp/services/apidiocall.dart';

class DioApi extends StatefulWidget {
  const DioApi({super.key});

  @override
  State<DioApi> createState() => _DioApiState();
}

class _DioApiState extends State<DioApi> {
  final apiDioServices = DioApiService();
  @override
  void initState() {
    super.initState();
    _loadData();
  }

  List<GetApiDio> data = [];

  Future<void> _loadData() async {
    final product = await apiDioServices.fetchapi();
    setState(() {
      data=product;
    });
  }

  Future<void> _deleteitem(String id,GetApiDio item) async{

 await apiDioServices.deleteApi(id);
    _loadData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ListView.builder(
      itemCount: data.length,
        itemBuilder: (context, index) {
      GetApiDio item=data[index];

      return Card(
        child: Column(
          children: [
            ListTile(
              onTap: ()=>  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> PostApiDioPage())),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(item.image),

              ),
              title: Text("${item.id}  ${item.title}"),
              subtitle: Text(item.description),
              trailing: Card(
   color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("\$ ${item.price.toString()}",style: const TextStyle(color: Colors.black),),
                ),
              ),
            ),
            ElevatedButton(onPressed: (){
              _deleteitem(item.id.toString(),item);
            }, child: const Text("Delete Data"))
          ],
        ),
      );
    }));
  }
}


