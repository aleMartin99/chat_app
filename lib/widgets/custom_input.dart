import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final TextInputType? keyboardType;
  final TextEditingController textController;
  final bool isPassword;

  const CustomInput(
      {Key? key,
      required this.icon,
      this.keyboardType,
      required this.hintText,
      required this.isPassword,
      required this.textController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 20),
        padding: const EdgeInsets.only(top: 5, left: 5, bottom: 5, right: 20),
        decoration: BoxDecoration(boxShadow: <BoxShadow>[
          BoxShadow(
              //   blurStyle: BlurStyle.solid,
              blurRadius: 5,
              offset: const Offset(0, 5),
              color: Colors.black.withOpacity(0.05))
        ], color: Colors.white, borderRadius: BorderRadius.circular(30)),
        child: TextField(
          controller: textController,
          autocorrect: false,
          keyboardType: keyboardType,
          obscureText: isPassword == true ? true : false,
          decoration: InputDecoration(
              prefixIcon: Icon(icon),
              focusedBorder: InputBorder.none,
              border: InputBorder.none,
              hintText: hintText),
        ));
  }
}
