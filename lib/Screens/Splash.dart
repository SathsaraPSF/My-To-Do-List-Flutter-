import 'dart:async';

import 'package:flutter/material.dart';
import 'package:to_do_ist/Screens/DashboardScreen.dart';
import 'package:to_do_ist/Screens/LoginScreen.dart';

import 'BackGroundImage.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState(){
    super.initState();
    Timer(const Duration(seconds: 5),()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen(),)));
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackgroundImage(sourse: 'images/splash.png'),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 270),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("Manage every day tasks with me", style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w300
                  ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 100),
                    child: CircularProgressIndicator(),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
