import 'package:flutter/material.dart';

import 'CardComponent.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: CardComponent(),
      ),
    );
  }
}