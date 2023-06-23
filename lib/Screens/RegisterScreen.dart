import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:to_do_ist/Screens/LoginScreen.dart';
import 'package:to_do_ist/Screens/TextInput.dart';

import 'BackGroundImage.dart';

class RegisterScreen extends StatelessWidget {
   RegisterScreen({super.key});

   final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
       minimumSize: const Size(200, 50), backgroundColor: Colors.white,
       padding: const EdgeInsets.symmetric(horizontal: 16),
       shape: const RoundedRectangleBorder(
         borderRadius: BorderRadius.all(Radius.circular(10)),
       )
   );

   final ButtonStyle  raisedButtonStyle2 = ElevatedButton.styleFrom(
       minimumSize: const Size(200, 50), backgroundColor: Colors.transparent,
       padding: const EdgeInsets.symmetric(horizontal: 16),
       shape: const RoundedRectangleBorder(
         borderRadius: BorderRadius.all(Radius.circular(10)),
       )
   );



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
                    obscureText:true),

                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: ElevatedButton(
                    style: raisedButtonStyle,
                    onPressed: () { },
                    child:  Text('Confirm',style: TextStyle(
                        color: Colors.indigo[900],
                        fontSize: 16.0
                    ),),
                  ),
                ),
                 const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text("Already have an account ?",style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 0),
                  child: TextButton(
                    style: raisedButtonStyle2,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                    },
                    child:   Text('Sign in',style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontFamily: 'FontSubHeader',
                        shadows: [
                          Shadow(
                              color: Colors.black.withOpacity(0.8),
                              offset: const Offset(5, 5),
                              blurRadius: 10.0)
                        ])
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
