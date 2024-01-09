import 'package:flutter/material.dart';
import 'package:to_doapp/challenge/screens/pages/challenge_duration.dart';
import 'package:to_doapp/challenge/widget/button.dart';
class ChallengeName extends StatelessWidget {
  const ChallengeName({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding:  EdgeInsets.only(
            top:MediaQuery.of(context).size.height*0.1 ,
            right: 16,
            left: 16,
            bottom: MediaQuery.of(context).size.height*0.1
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
         const   Column(
              children: [
                 Text("Challenge Name",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500),),
           Text("What you want to do in the challenge"),
              ],
            ),
              Expanded(child: Image.asset("assets/images/Done.png")),
         Column(
           children: [
             const  TextField(
               decoration: InputDecoration(
                 border: InputBorder.none,
                   hintText: "Ex Meditation",
                   fillColor: Color.fromRGBO(228, 229, 233, 1),
                   filled: true
               ),
             ),
           const   SizedBox(
               height: 16,
             ),
             Button(
               widgets: const SizedBox.shrink(),
               onPressed:(){
               Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const ChallengeDurationPage()));
             },title: "Next", textColor:Colors.white, backgroundColor: const  Color.fromRGBO(104, 37, 246, 1),)

           ],
         ) ,

            ],
          ),
        ),
      ),
    );
  }
}
