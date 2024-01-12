import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class ActivationScreen extends StatelessWidget {
  const ActivationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          'ACTIVATE CAMERA FOR SCANNING:',
          style: TextStyle(
            color: const Color(0xFF2A2A2A),
            fontSize: MediaQuery.of(context).textScaleFactor*12,
            fontWeight: FontWeight.w700,

          ),
        ),
        Text(
          'Step1: Tap the camera icon below to start scanning.\nStep2: Grant camera permissions if prompted.\nStep3: Position your face within the frame.\nStep4: Hold steady until the scan is complete.',
          style: GoogleFonts.openSans(
            color: const Color(0xFF2A2A2A),
            fontSize: MediaQuery.of(context).textScaleFactor*12,

            fontWeight: FontWeight.w400,

          ),
        ),
       const  SizedBox(
          height: 19,
        ),
        Container(

          padding: const EdgeInsets.all(16),
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1, color: Color(0x19213D68)),
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
                  color:const  Color(0xFF1F2024),
                  fontSize: MediaQuery.of(context).textScaleFactor*14,

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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Your data is handled securely. For more information, view our privacy policy.',
                          style: GoogleFonts.openSans(
                            color: const Color(0x99213D68),
                            fontSize: MediaQuery.of(context).textScaleFactor*12,

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
