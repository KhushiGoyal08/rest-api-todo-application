import 'package:flutter/material.dart';
import 'package:to_doapp/challenge/screens/pages/setTimeScreen.dart';

import '../../widget/button.dart';

class ChallengeDurationPage extends StatelessWidget {
  const ChallengeDurationPage({super.key});

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
                  const Text(
                    "Challenge Duration",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                  Image.asset("assets/images/puzzleMan.png"),
                const   SizedBox(height: 16,),
                  Button(
                      widgets: const SizedBox.shrink(),
                      onPressed: () {},
                      title: "1 Day",
                      textColor: Colors.black,
                      backgroundColor:const Color.fromRGBO(228, 229, 233, 1) ),
                  const SizedBox(
                    height: 16,
                  ),
                  Button(
                      widgets: const SizedBox.shrink(),
                      onPressed: () {},
                      title: "2 Day",
                      textColor: Colors.black,
                      backgroundColor:const  Color.fromRGBO(228, 229, 233, 1)),
                  const SizedBox(
                    height: 16,
                  ),
                  Button(
                      widgets: const SizedBox.shrink(),
                      onPressed: () {},
                      title: "3 Day",
                      textColor: Colors.black,
                      backgroundColor:const  Color.fromRGBO(228, 229, 233, 1)),
                ],
              ),
              Button(
                widgets: const SizedBox.shrink(),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> SetTimeScreen()));
                  },
                  title: "Next",
                  textColor: Colors.white,
                  backgroundColor:const  Color.fromRGBO(104, 37, 246, 1),)
            ],
          ),
        ),
      ),
    );
  }
}
