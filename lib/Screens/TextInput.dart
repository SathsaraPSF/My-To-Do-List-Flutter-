import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TextInput extends StatelessWidget {
  const TextInput({super.key,
    required this.icon,
    required this.hint,
    required this.inputType,
    required this.action,
     required this.obscureText});

  final IconData icon;
  final String hint;
  final TextInputType inputType;
  final TextInputAction action;
  final bool obscureText ;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 30,right: 20,left: 20),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.blue[50]?.withOpacity(0.4),
              borderRadius: BorderRadius.circular(10)
          ),
          child: TextField(
            decoration: InputDecoration(
                contentPadding:  const EdgeInsets.symmetric(horizontal:20, vertical: 15),
                hintText: hint,
                prefixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal:10, vertical: 10),
                  child: FaIcon(
                    icon,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
                border: InputBorder.none,
                fillColor: Colors.blue,
                hintStyle: const TextStyle(color: Colors.white70)),
            style: const TextStyle(
                color: Colors.white, fontSize: 18.0),
            cursorColor: Colors.white60,
            keyboardType: inputType,
            obscureText:obscureText,
            textInputAction: action,
          ),
        )
    );
  }
}