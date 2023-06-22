// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:to_do_ist/Screens/RegisterScreen.dart';

import 'BackGroundImage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});

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
          body: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 110.0),
                child: Center(
                  child: Text(
                    "Welcome",
                    style: TextStyle(
                        fontSize: 40.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontFamily: 'FontSubHeader'),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 30.0),
                child: Center(
                  child: Text(
                    "My To-Do List",
                    style: TextStyle(
                        fontSize: 45.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontFamily: 'FontHeader'),
                  ),
                ),
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 60.0, left: 10.0, right: 10.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.blue[100]?.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: TextField(
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(10),
                                  hintText: 'Email',
                                  prefixIcon: FaIcon(
                                    FontAwesomeIcons.solidEnvelope,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                  border: InputBorder.none,
                                  fillColor: Colors.blue,
                                  hintStyle: TextStyle(color: Colors.white70)),
                              style: TextStyle(
                                  color: Colors.white, fontSize: 18.0),
                              cursorColor: Colors.white60,
                              keyboardType: TextInputType.emailAddress,
                              textInputAction: TextInputAction.next,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 20.0, left: 10.0, right: 10.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.blue[100]?.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: TextField(
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(10),
                                  hintText: 'Password',
                                  prefixIcon: FaIcon(
                                    FontAwesomeIcons.lock,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                  border: InputBorder.none,
                                  fillColor: Colors.blue,
                                  hintStyle: TextStyle(color: Colors.white70)),
                              style: TextStyle(
                                  color: Colors.white, fontSize: 18.0),
                              obscureText: true,
                              cursorColor: Colors.white60,
                              textInputAction: TextInputAction.done,
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 2,left: 200),
                        child: TextButton(
                          style: raisedButtonStyle2,
                          onPressed: () { },
                          child:  const Text('Forget password',style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                            fontFamily: 'FontSubHeader'
                          ),),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: ElevatedButton(
                          style: raisedButtonStyle,
                          onPressed: () { },
                          child:  Text('Login',style: TextStyle(
                              color: Colors.indigo[900],
                              fontSize: 16.0
                          ),),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top:8.0),
                        child: Center(
                          child: Text("Don't have an account ?",style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.white,
                            fontFamily: 'FontSubHeader'
                          ),),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2),
                        child: TextButton(
                          style: raisedButtonStyle2,
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen() ,));
                          },
                          child:  const Text('Sign up',style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontFamily: 'FontSubHeader'
                          ),),
                        ),
                      ),
                    ],
                  ),
                ),
              ))
            ],
          ),
        )
      ],
    );
  }
}
