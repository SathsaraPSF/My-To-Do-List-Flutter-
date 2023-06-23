import 'package:flutter/material.dart';

class CardComponent extends StatelessWidget {
  const CardComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 50,
      child: Card (
          color: Colors.green[100],
          shadowColor: Colors.blueGrey,
          elevation: 10,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const <Widget>[
              ListTile(
                leading: Icon (
                    Icons.album,
                    color: Colors.cyan,
                    size: 45
                ),
                title: Text(
                  "Let's Talk About Love",
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text('Modern Talking Album'),
              ),
            ],
          )
      ),
    );
  }
}