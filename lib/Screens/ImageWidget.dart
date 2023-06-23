import 'package:flutter/material.dart';


class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key, required this.category,required this.imagePath});
  final String category;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:  [
        Text(category,style: const TextStyle(
        fontSize: 20,
          color: Colors.indigo,
          fontWeight: FontWeight.w500
        )),
        Image(
          image: AssetImage(imagePath),
          width: 100,
          height: 100,
        ),
      ],
    );
  }
}

