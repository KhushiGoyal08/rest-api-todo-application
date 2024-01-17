import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_doapp/onco/pages/faceVitalScreen.dart';

class FaceVitalScreen extends StatelessWidget {
  FaceVitalScreen({super.key,required this.widget});
List<Widget> widget;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading:  IconButton(
            onPressed: (){
              Navigator.of(context).pop();
            },
              icon:const Icon(Icons.arrow_back_ios)),
          title:  Text("Face Vital",
            style: GoogleFonts.openSans(
              color:const  Color(0xFF2A2A2A),
              fontSize: MediaQuery.of(context).textScaleFactor*16,

              fontWeight: FontWeight.w700,

            ),),
          centerTitle: true,
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 16.0),
              child: CircleAvatar(
                backgroundImage: AssetImage(
                    "assets/images/Avatar.png"),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:widget
          ),

          ),
        ),

    );
  }
}
