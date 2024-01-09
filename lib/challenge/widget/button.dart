import 'package:flutter/material.dart';
class Button extends StatefulWidget {
   Button({super.key,required this.title,required this.textColor,required this.backgroundColor,required this.onPressed,required this.widgets});
   String title;
   Color textColor;
   Color backgroundColor;
   void Function() onPressed;
   Widget widgets;
  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size.fromHeight(50),
        backgroundColor: widget.backgroundColor,
        shape: const RoundedRectangleBorder(

        )
      ),

        onPressed: widget.onPressed, child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(widget.title,style: TextStyle(color: widget.textColor),),
            widget.widgets,
          ],
        ));
  }
}
