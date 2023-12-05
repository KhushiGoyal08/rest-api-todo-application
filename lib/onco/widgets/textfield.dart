import 'package:flutter/material.dart';

class TextFieldForForm extends StatelessWidget {
 TextFieldForForm({ this.text="",required this.validator, super.key});
  final String text;
 String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      decoration: InputDecoration(
        label: Text(text),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
      ),
    );
  }
}

