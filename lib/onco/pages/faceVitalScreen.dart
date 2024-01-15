import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_doapp/onco/pages/activationScreen.dart';
import 'package:to_doapp/onco/pages/homeoncoscreen.dart';
import 'package:to_doapp/onco/pages/postureScreen.dart';
import 'package:to_doapp/onco/widgets/round_button.dart';

class VitalScreen extends StatelessWidget {
  const VitalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FaceVitalScreen(widget: [
      StepIndicator(
numberOfSteps: 3, // Set the number of steps
currentStep: 1, // Set the current step
),

      const    First(),

      Button(
widget:const  Icon(Icons.arrow_forward,color: Colors.white,),
onPress: () {
Navigator.push(context,MaterialPageRoute(builder: (context)=>const VitalScreen2()));
},
text: "Next ",
textColor: Colors.white,
buttonColor: const Color(0xFFDC7D57)),
    ]);
  }
}

class First extends StatelessWidget {
  const First({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image(
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.4,
            image: const AssetImage(
                "assets/images/onco.png"),
          ),
        ),
        const  SizedBox(
          height: 10,
        ),
        Text(
          'FACE VITAL INSTRUCTION:',
          style: GoogleFonts.openSans(
            color: const Color(0xFF2A2A2A),
            fontSize: MediaQuery.of(context).textScaleFactor*12,
            fontWeight: FontWeight.w700,
          ),
        ),
        const  SizedBox(
          height: 10,
        ),
        Text(
          '1.Find a well-lit area for accurate results.\n2.Hold your device at eye level for optimal scanning.\n3.Remove accessories like glasses or hats for clarity.\n4.Ensure your face is visible and centred in the frame.\n5.Stay still during the scanning process for accuracy.',
          style: GoogleFonts.openSans(
            color: const Color(0xFF2A2A2A),
            fontSize: MediaQuery.of(context).textScaleFactor*12,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}

class StepIndicator extends StatelessWidget {
  final int numberOfSteps;
  final int currentStep;
  final List<String> text = ['INSTRUCTION', 'POSTURE', 'ACTIVATION'];

  StepIndicator({required this.numberOfSteps, required this.currentStep});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(
          numberOfSteps,
          (index) {
            // Check if the step is less than or equal to the current step
            bool isCompleted = index < currentStep;

            // Create a container with a dotted line or a filled circle based on completion status
            return Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width*0.1,
                  height: MediaQuery.of(context).size.width*0.1,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: isCompleted
                            ? const Color(0xFFDC7D57)
                            : const Color(0x26213D68)),
                  ),
                  child:index+1<currentStep?const Icon(Icons.check): Center(
                    child: Text(
                      '${index + 1}',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.openSans(
                        color: isCompleted
                            ? const Color(0xFF1F2024)
                            : const Color(0x99213D68),
                        fontSize: MediaQuery.of(context).textScaleFactor*12,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  text[index],
                  style: GoogleFonts.openSans(
                    color: isCompleted &&index+1<currentStep
                        ? const Color(0xFFDC7D57)
                        : const Color(0x99213D68),
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            );
          },
        )
            // Add dividers between the steps
            .expand((widget) => [
                  widget,
                  Padding(
                    padding: const EdgeInsets.only(bottom: 25),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.15,
                      child: const Divider(
                        thickness: 2, // Set the thickness of the divider
                        color:  Color(0x26213D68),

                      ),
                    ),
                  ),
                ])
            .toList()
          ..removeLast(), // Remove the last divider
      ),
    );
  }
}



