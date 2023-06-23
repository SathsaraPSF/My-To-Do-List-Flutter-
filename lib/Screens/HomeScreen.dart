import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'ListComponents.dart';
import 'ListVerticle.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
            backgroundColor: Colors.blue[200],
            body: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text("Hi",
                                  style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300)),
                              Text(
                                "Pasindu Sathsara",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.indigo,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'FontSubHeader'),
                                maxLines: 1,
                              )
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 60),
                          child: Image(
                              image: AssetImage('images/user.png'),
                              height: 100.0,
                              width: 100),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0, top: 30),
                      child: Row(
                        children: const [
                          Text("Select category to add Todo",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w300,
                              )),
                          SizedBox(width: 10,),
                          Icon(
                              FontAwesomeIcons.arrowRight,
                              color: Colors.black26,
                            ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Lists(),
                    const SizedBox(
                      height: 20,
                    ),
                     Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Row(
                        children: const [
                          Text("Your on going tasks",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w300,
                              )),
                          SizedBox(width: 10,),
                          Icon(
                            FontAwesomeIcons.arrowDown,
                            color: Colors.black26,
                          ),
                        ],
                      ),
                    ),

                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: ListVerticle(),
                    )
                  ]),
            )),
      ],
    );
  }
}
