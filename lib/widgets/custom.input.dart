import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final TextInputType type;
  final bool obscure;
  //final Icon prefixIcon;
  final Icon suffixIcon;

  const CustomInput(
      {Key? key,
      required this.controller,
      required this.hint,
      required this.type,
      required this.obscure,
      //required this.prefixIcon,
      required this.suffixIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextFormField(
        controller: controller,
        keyboardType: type,
        obscureText: obscure,
        decoration: InputDecoration(
            icon: suffixIcon, hintText: hint, hintStyle: TextStyle()),
      ),
    );
  }
}
