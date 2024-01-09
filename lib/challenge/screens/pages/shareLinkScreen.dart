import 'package:flutter/material.dart';
import 'package:to_doapp/challenge/screens/pages/congratsScreenConnect.dart';

import '../../widget/button.dart';
class ShareLinkScreen extends StatelessWidget {
  const ShareLinkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.1,
            right: 16,
            left: 16,
            bottom: MediaQuery.of(context).size.height * 0.1,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [

                  Image.asset("assets/images/team_emp.png"),
                  const   SizedBox(height: 16,),
              const   Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 16),
                  child: Text("Add your partner to start the challenge ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                  ),),
                )
                ],
              ),
              Button(
                widgets: const SizedBox.shrink(),
                onPressed: () {
                 Navigator.of(context).push(MaterialPageRoute(builder: (context)=> CongratsScreen()));
                },
                title: "Share link with your friend",
                textColor: Colors.white,
                backgroundColor:const  Color.fromRGBO(104, 37, 246, 1),)
            ],
          ),
        ),
      ),
    );
  }
}
