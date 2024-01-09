// import 'package:flutter/material.dart';
// import 'package:to_doapp/onco/pages/gender_page.dart';
//
// class HomePage extends StatelessWidget {
//   const HomePage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: const  Icon(Icons.more_vert),
//         title: const Text("My OncoCheck"),
//         centerTitle: true,
//         actions: [
//           Padding(
//             padding: const EdgeInsets.only(right: 20),
//             child: GestureDetector(
//               onTap: (){},
//               child: const CircleAvatar(
//                 backgroundImage: NetworkImage("https://assets-global.website-files.com/619e8d2e8bd4838a9340a810/647c1064ebf1c6171bfd3a87_profile-picture-feature-1.webp"),
//               ),
//             ),
//           )
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: LayoutBuilder(
//           builder: (BuildContext context, BoxConstraints constraints){
//             if(constraints.maxWidth<=750){
//               return  Padding(
//                   padding: const EdgeInsets.all(30),
//                   child: homeScreen(context)
//               );
//             }
//             else{
//               return  Padding(
//                   padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.30),
//                   child: homeScreen(context)
//               );
//             }
//           },
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         type: BottomNavigationBarType.fixed,
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.note_add_outlined),
//             label: 'Diary',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.miscellaneous_services_outlined),
//             label: 'Services',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.maps_ugc_sharp),
//             label: 'Track',
//           ),
//           BottomNavigationBarItem(
//             backgroundColor: Colors.black,
//             icon: Icon(Icons.article_outlined),
//             label: 'Articles',
//           ),
//         ],
//         // currentIndex: _selectedIndex,
//         // selectedItemColor: Colors.blue,
//         // onTap: _onItemTapped,
//       ),
//     );
//   }
//   Widget homeScreen(BuildContext context){
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: [
//         const   Text("Take Your Cancer Risk Assessment",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
//         const   SizedBox(height: 20,),
//         Card(
//           child:  Padding(
//             padding: const EdgeInsets.all(15),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const     Text("Complete the questionnaire at your own pace",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
//                 Slider(value: .3,activeColor: Colors.redAccent, onChanged:(value){
//                   value =.4;
//                 }),
//                 const   Text("1/46 questions answered")
//               ],
//             ),
//           ),
//
//         ),
//         const   SizedBox(height: 20,),
//         const  Image(image:  NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShbGa8PTRvJGwubehdPcKB_GioSKPw2mJx7w&usqp=CAU"),),
//         const   SizedBox(height: 20,),
//         Card(
//           child:  Padding(
//             padding: const EdgeInsets.all(15),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const     Text("Have you ever been diagnosed with cancer ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
//                 const   SizedBox(height: 20,),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.redAccent,
//                             // fixedSize:  Size.fromWidth(MediaQuery.of(context).size.width*0.3)
//                         ),
//                         onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: ((context)=>const GenderPage())));}, child: const  Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text("Yes",
//                           style: TextStyle(
//                               color: Colors.white
//                           ),),
//                         SizedBox(width: 30,),
//                         Icon(Icons.arrow_forward_ios,color: Colors.white,)
//                       ],
//                     )),
//                     Row(
//
//                       children: [
//                         ElevatedButton(
//                             style: ElevatedButton.styleFrom(
//                                 backgroundColor: Colors.teal,
//                                 // fixedSize:  Size.fromWidth(MediaQuery.of(context).size.width*0.1)
//                             ),
//                             onPressed: (){
//                               Navigator.of(context).push(MaterialPageRoute(builder: ((context)=>const GenderPage())));
//                             }, child:const  Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text("No",
//                               style: TextStyle(
//                                   color: Colors.white
//                               ),),
//                             SizedBox(width: 30,),
//                             Icon(Icons.arrow_forward_ios,color: Colors.white,)
//                           ],
//                         )),
//                       ],
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//
//           ),
//
//         ),
//       ],
//     );
//   }
// }
