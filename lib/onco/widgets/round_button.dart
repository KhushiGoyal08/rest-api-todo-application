import 'package:flutter/material.dart';
class Button extends StatelessWidget {
    Button({required this.onPress,required this.text,required this.textColor,required this.buttonColor ,required  this.widget,super.key});
 void Function()? onPress;
 final String text;
 final Color textColor;
 final Color buttonColor;
 Widget widget;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
        minimumSize: const Size.fromHeight(50),
      ),
        onPressed: onPress, child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(text,
    style: TextStyle(
      color: textColor
    ),),
            widget
          ],
        ));
  }
}
