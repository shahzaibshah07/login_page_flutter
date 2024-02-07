import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String name;
  final IconData prefixIcon;
  final bool obscureText;
  final TextCapitalization textCapitalization;
  final TextInputType inputType;
  final TextInputFormatter inputFormatter;
  final FormFieldValidator validator;



   CustomTextField({
    Key,
    required this.controller,
    required this.name,
    required this.prefixIcon,
    required this.obscureText,
    this.textCapitalization = TextCapitalization.none,
    required this.inputType,
    required this.inputFormatter,
    required this.validator,

  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        style: const TextStyle(color: Colors.grey),
        controller: controller,
        keyboardType: inputType,
        obscureText: obscureText,
        cursorColor: Colors.grey,
        autofocus: true,
        textAlign: TextAlign.start,
        inputFormatters: [inputFormatter],
        decoration: InputDecoration(
          labelText: name,
          prefixIcon:  Icon(prefixIcon),
          labelStyle: TextStyle(
            color: Colors.grey,
            fontSize: 12,
          ),
          contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          fillColor: Colors.white,
          focusColor: Colors.grey,
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(4)),
              borderSide: BorderSide(width: 1, color: Colors.red)),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          filled: true,
        ),

        validator: (value) {}
      );

  }
}
