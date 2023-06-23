import 'package:flutter/material.dart';

class Lists extends StatefulWidget {
  const Lists({super.key});

  @override
  State<Lists> createState() => _ListsState();
}

class _ListsState extends State<Lists> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 160,
      child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                child: Container(
                  width: 150,
                  decoration: BoxDecoration(
                       boxShadow: [BoxShadow(
                         color: Colors.indigo.withOpacity(0.5),
                         blurRadius: 10,
                         offset: const Offset(1,1)
                       )],
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                child: Container(
                  width: 150,
                  decoration: BoxDecoration(
                      boxShadow: [BoxShadow(
                          color: Colors.indigo.withOpacity(0.5),
                          blurRadius: 10,
                          offset: const Offset(1,1)
                      )],
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                child: Container(
                  width: 150,
                  decoration: BoxDecoration(
                      boxShadow: [BoxShadow(
                          color: Colors.indigo.withOpacity(0.5),
                          blurRadius: 10,
                          offset: const Offset(1,1)
                      )],
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                child: Container(
                  width: 150,
                  decoration: BoxDecoration(
                      boxShadow: [BoxShadow(
                          color: Colors.indigo.withOpacity(0.5),
                          blurRadius: 10,
                          offset: const Offset(1,1)
                      )],
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                ),
              ),
            )
          ],
      ),
    );
  }
}
