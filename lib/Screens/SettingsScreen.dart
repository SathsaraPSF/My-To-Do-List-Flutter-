import 'package:flutter/material.dart';
import 'BackGroundImage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackgroundImage(sourse: 'images/back_bg3.jpg'),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.only(top: 60, left: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 150,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Image(
                          image: AssetImage('images/user.png'),
                          height: 60,
                          width: 60),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "Pasindu Sathsara",
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'FontSubHeader',
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "sat@gmail.com",
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'FontSubHeader',
                                color: Colors.white54,
                                fontWeight: FontWeight.w100),
                          ),
                        ],
                      ),
                      const SizedBox(width: 60),
                      IconButton(onPressed: (){}, icon: const Icon(FontAwesomeIcons.penToSquare,size: 20,color: Colors.white,)

                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
