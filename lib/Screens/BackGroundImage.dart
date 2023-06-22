import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/back_image.jpg'),
              fit: BoxFit.cover,
            )
        ),
      ),

    );
  }
}
