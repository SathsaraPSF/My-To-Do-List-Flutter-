import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ListVerticle extends StatefulWidget {
  const ListVerticle({super.key});

  @override
  State<ListVerticle> createState() => _ListVerticleState();
}

class _ListVerticleState extends State<ListVerticle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      margin: const EdgeInsets.only(top: 5),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: InkWell(
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.indigo.withOpacity(0.5),
                          blurRadius: 10,
                          offset: const Offset(1, 1))
                    ],
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.white,
                        Colors.blue.withOpacity(0.8),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ListTile(
                      leading: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.check_circle,
                          size: 30,
                          color: Colors.indigo,
                        ),
                      ),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FontAwesomeIcons.trash,
                          size: 20,
                          color: Colors.white,
                        ),
                      ),
                      title: const Text("Your on going task",
                          style: TextStyle(color: Colors.indigo)),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10),
            child: InkWell(
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.indigo.withOpacity(0.5),
                          blurRadius: 10,
                          offset: const Offset(1, 1))
                    ],
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.white,
                        Colors.blue.withOpacity(0.8),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ListTile(
                      leading: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.check_circle,
                          size: 30,
                          color: Colors.indigo,
                        ),
                      ),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FontAwesomeIcons.trash,
                          size: 20,
                          color: Colors.white,
                        ),
                      ),
                      title: const Text("Your on going task",
                          style: TextStyle(color: Colors.indigo)),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10),
            child: InkWell(
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.indigo.withOpacity(0.5),
                          blurRadius: 10,
                          offset: const Offset(1, 1))
                    ],
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.white,
                        Colors.blue.withOpacity(0.8),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ListTile(
                      leading: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.check_circle,
                          size: 30,
                          color: Colors.indigo,
                        ),
                      ),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FontAwesomeIcons.trash,
                          size: 20,
                          color: Colors.white,
                        ),
                      ),
                      title: const Text("Your on going task",
                          style: TextStyle(color: Colors.indigo)),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
