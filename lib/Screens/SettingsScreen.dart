import 'package:flutter/material.dart';
import 'package:to_do_ist/Screens/LoginScreen.dart';
import 'BackGroundImage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'ListViewSetting.dart';

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
                                overflow: TextOverflow.clip,
                                fontFamily: 'FontSubHeader',
                                color: Colors.white54,
                                fontWeight: FontWeight.w100),
                          ),
                        ],
                      ),
                      const SizedBox(width: 60),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            FontAwesomeIcons.penToSquare,
                            size: 20,
                            color: Colors.white60,
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 230.0, left: 20, right: 20),
          child: SizedBox(
            height: 600,
            child: Column(
              children:  [
                const ListItems(
                    title: 'Account', iconLeading: FontAwesomeIcons.solidUser, screen: null,),
                const ListItems(
                    title: 'Notification', iconLeading: FontAwesomeIcons.solidBell, screen: null,),
                const ListItems(
                    title: 'Support', iconLeading: FontAwesomeIcons.solidCircleQuestion, screen: null,),
                const ListItems(
                    title: 'Rate us', iconLeading: FontAwesomeIcons.solidStar, screen: null,),
                const ListItems(
                    title: 'Feedback', iconLeading: FontAwesomeIcons.solidHeart, screen: null,),
                ListItems(
                    title: 'Log out', iconLeading: FontAwesomeIcons.rightFromBracket, screen: LoginScreen(),)
              ],
            ),
          ),
        )
      ],
    );
  }
}
