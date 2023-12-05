import 'package:flutter/material.dart';
import 'package:to_doapp/onco/pages/login_page.dart';
import 'package:to_doapp/onco/pages/sign_up_page.dart';

import '../widgets/round_button.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.orange, Colors.yellow, Colors.lightGreenAccent],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight),
      ),
      child: LayoutBuilder(
        builder: (BuildContext context,BoxConstraints constraints){
          if(constraints.maxWidth<=750){
            return Padding(
                padding: const EdgeInsets.all(30),
                child: firstScreen(context)
            );
          }
          else{
            return Padding(
             padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width*0.35
                ),
                child: firstScreen(context)
            );
          }
        }
      )
    ));
  }
  Widget firstScreen(BuildContext context){
  return  Column(
      mainAxisAlignment: MediaQuery.of(context).size.width<=750 ? MainAxisAlignment.spaceBetween : MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding:  EdgeInsets.only(
              top: MediaQuery.of(context).size.height*0.2
          ),
          child: const  Column(
            children: [
              Icon(Icons.square_rounded,color: Colors.white,size: 80,),
              SizedBox(
                height: 30,
              ),

              Text(
                "Create an account",
                style: TextStyle(color: Colors.black,fontSize: 30),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Lorem ipsum dolor sit   Ut ad minim  ut  ex ea   dolor in  in  eu  non , sunt in  qui anim id est ",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black,
                    fontSize: 18
                ),
              ),
            ],
          ),
        ),

        Column(
          children: [
            Button(
                onPress: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>  SignUpScreen()));
                },
                text: "Create Account",
                textColor: Colors.white,
                buttonColor: Colors.redAccent),
            const     SizedBox(
              height: 20,
            ),
            Button(
                onPress: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const LoginScreen()));
                },
                text: "Log in",
                textColor: Colors.black,
                buttonColor: Colors.white),
            const     SizedBox(
              height: 20,
            ),
          ],
        ),
      ],
    );
  }
}
