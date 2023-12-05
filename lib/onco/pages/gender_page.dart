import 'package:flutter/material.dart';
import 'package:to_doapp/onco/widgets/round_button.dart';
class GenderPage extends StatelessWidget {
  const GenderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const  Icon(Icons.more_vert),
        title: const Text("My OncoCheck"),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: GestureDetector(
              onTap: (){},
              child: const CircleAvatar(
                backgroundImage: NetworkImage("https://assets-global.website-files.com/619e8d2e8bd4838a9340a810/647c1064ebf1c6171bfd3a87_profile-picture-feature-1.webp"),
              ),
            ),
          )
        ],
      ),
      body:LayoutBuilder(
        builder: (BuildContext context ,BoxConstraints constraints){
          if(constraints.maxWidth<=750){
            return      Padding(
              padding:const  EdgeInsets.symmetric(
                  horizontal: 30,
                vertical:30
              ),
              child: genderPage(context),
            );
          }
          else{
            return  Padding(
              padding:  EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width*0.35
              ),
              child: genderPage(context),
            );
          }
        },
      )
    );
  }
  Widget genderPage(BuildContext context){
    return  Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Slider(
            activeColor: Colors.redAccent,
            value: 0.4, onChanged:(value){
          value=0.4;
        }),
        const Text("2/46 questions answered",textAlign: TextAlign.left,style: TextStyle(fontWeight: FontWeight.bold),),
        const SizedBox(height: 15,),
      const   Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShbGa8PTRvJGwubehdPcKB_GioSKPw2mJx7w&usqp=CAU"),),
        const SizedBox(height: 15,),
        const  Text("What is your gender at birth?"),
        const SizedBox(height: 15,),
        Button(onPress: (){}, text: "Male", textColor:Colors.black, buttonColor: Colors.white70),
        const SizedBox(height: 15,),
        Button(onPress: (){}, text: "Female", textColor:Colors.black, buttonColor: Colors.white70),
        const Spacer(),
        Align(
            alignment: Alignment.bottomLeft,
            child: Button(onPress: (){}, text: "Next Step", textColor:Colors.white, buttonColor: Colors.teal)),
      const   SizedBox(height: 20,)
      ],
    );
  }
}
