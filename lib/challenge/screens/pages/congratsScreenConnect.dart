import 'package:flutter/material.dart';
import 'package:flutter_image_stack/flutter_image_stack.dart';
import 'package:to_doapp/challenge/screens/pages/days3ChallengeScreen.dart';
import '../../widget/button.dart';
class CongratsScreen extends StatelessWidget {
   CongratsScreen({super.key});

  List<String> images=[
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGDNPqYvfVXr50g4wSf4HLD4p557PbSFNdJaKHA0Sqmva990kgeqCWX32L8hlD2NNWyeU&usqp=CAU",
    "https://play-lh.googleusercontent.com/3ha-TO-wWZA8IofnlU6tWsYJiBCYbqs8hvhB6BQnct1PgsYpAZhCPMKoYggHOX9z-1qM"
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.3,
            right: 16,
            left: 16,
            bottom: MediaQuery.of(context).size.height * 0.1,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [

                  FlutterImageStack(imageList: images, totalCount: 2,itemRadius: 105,),
             const      SizedBox(height: 16,),
                  const   Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 16),
                    child: Text("Congrats",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                      ),),
                  ),
                  const  Text("Your partner has joined the challenge",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                      color:  Color.fromRGBO(0, 0, 0, 0.3),
                    ),),
                ],
              ),
              Button(
                widgets: const SizedBox.shrink(),
                onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const BuddyChallenge()));
                },
                title: "Enter the challenge room",
                textColor: Colors.white,
                backgroundColor:const  Color.fromRGBO(104, 37, 246, 1),)
            ],
          ),
        ),
      ),
    );
  }
}
