import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_doapp/onco/widgets/round_button.dart';

class FaceVitalScreen extends StatelessWidget {
  const FaceVitalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading:const  Icon(Icons.arrow_back_ios),
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
            children: [
            StepIndicator(
              numberOfSteps: 3, // Set the number of steps
              currentStep: 1, // Set the current step
            ),

            // profile Pic

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
            Text(
              'FACE VITAL INSTRUCTION:',
              style: GoogleFonts.openSans(
                color: const Color(0xFF2A2A2A),
                fontSize: MediaQuery.of(context).textScaleFactor*12,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              '1.Find a well-lit area for accurate results.\n2.Hold your device at eye level for optimal scanning.\n3.Remove accessories like glasses or hats for clarity.\n4.Ensure your face is visible and centred in the frame.\n5.Stay still during the scanning process for accuracy.',
              style: GoogleFonts.openSans(
                color: const Color(0xFF2A2A2A),
                fontSize: MediaQuery.of(context).textScaleFactor*12,
                fontWeight: FontWeight.w400,
              ),
            ),
              Button(
                widget:const  Icon(Icons.arrow_forward,color: Colors.white,),
                  onPress: () {},
                  text: "Next ",
                  textColor: Colors.white,
                  buttonColor: const Color(0xFFDC7D57))
            ],
          ),
        ),
      ),
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
                  child: Center(
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
                    color: isCompleted
                        ? const Color(0xFF1F2024)
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
