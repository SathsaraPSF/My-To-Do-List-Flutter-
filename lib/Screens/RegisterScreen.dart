import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:to_do_ist/Screens/TextInput.dart';

import 'BackGroundImage.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 70),
                  child: Text(
                    "Register",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 45.0,
                        fontFamily: 'FontSubHeader',
                        shadows: [
                          Shadow(
                              color: Colors.black.withOpacity(0.8),
                              offset: const Offset(5, 5),
                              blurRadius: 10.0)
                        ]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    "Create your new account.",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontFamily: 'FontSubHeader',
                        shadows: [
                          Shadow(
                              color: Colors.black.withOpacity(0.8),
                              offset: const Offset(5, 5),
                              blurRadius: 10.0)
                        ]),
                  ),
                ),
                 const TextInput(
                    icon: FontAwesomeIcons.solidUser,
                    hint: "Name",
                    inputType: TextInputType.text,
                    action: TextInputAction.next,
                    obscureText:false),
                const TextInput(
                    icon: FontAwesomeIcons.solidEnvelope,
                    hint: "Email",
                    inputType: TextInputType.emailAddress,
                    action: TextInputAction.next,
                    obscureText:false),
                const TextInput(
                    icon: FontAwesomeIcons.lock,
                    hint: "Password",
                    inputType: TextInputType.visiblePassword,
                    action: TextInputAction.next,
                    obscureText:true),
                const TextInput(
                    icon: FontAwesomeIcons.lock,
                    hint: "Confirm password",
                    inputType: TextInputType.visiblePassword,
                    action: TextInputAction.done,
                    obscureText:true)
              ],
            ),
          ),
        )
      ],
    );
  }
}