import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_doapp/onco/pages/activationScreen.dart';
import 'package:to_doapp/onco/pages/faceVitalScreen.dart';
import 'package:to_doapp/onco/pages/homeoncoscreen.dart';
import 'package:to_doapp/onco/widgets/round_button.dart';


class VitalScreen2 extends StatelessWidget {
  const VitalScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return FaceVitalScreen(widget: [
      StepIndicator(
        numberOfSteps: 3, // Set the number of steps
        currentStep: 2, // Set the current step
      ),

      PostureScreen(),

      Button(
          widget:const  Icon(Icons.arrow_forward,color: Colors.white,),
          onPress: () {
            Navigator.push(context,MaterialPageRoute(builder: (context)=>const VitalScreen3()));
          },
          text: "Next ",
          textColor: Colors.white,
          buttonColor: const Color(0xFFDC7D57)),
    ]);
  }
}


class PostureScreen extends StatelessWidget {
  PostureScreen({super.key});
  final List<Color> colors = [
    const Color(0xFFF9E4E5),
    const Color(0xFFF6F1E7),
    const Color(0xFFE4EAEC),
    const Color(0xFFF2F6FA)
  ];
  final List<String> text = ["SITTING", "STANDING", "EXERCISE", "WALKING"];
  List<String> images = ["Work", "Waiting", "Stretching", "Walking"];
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        Text(
          'PLEASE SELECT THE POSTURES:',
          style: GoogleFonts.openSans(
            color: const Color(0xFF2A2A2A),
            fontSize: 12,
            fontWeight: FontWeight.w700,
          ),
        ),
       const  SizedBox(height: 20,),
        GridView.builder(
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
            ),
            itemCount: 4,
            itemBuilder: (context, index) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  color: colors[index],
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SvgPicture.asset("assets/images/${images[index]}.svg"),
                        Center(
                            child: Text(
                          text[index],
                          style: GoogleFonts.openSans(
                            color: const Color(0xFF1F2024),
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                        )),

                      ],
                    ),
                  ),
                ),
              );
            }),
       const  SizedBox(height: 20,),
        Container(
          padding: const EdgeInsets.all(16),
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                  width: 1, color: Color(0x19213D68)),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Note:',
                style: GoogleFonts.openSans(
                  color: const Color(0xFF1F2024),
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Choose the posture that best suits you for accurate scanning.',
                          style: GoogleFonts.openSans(
                            color: const Color(0x99213D68),
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
