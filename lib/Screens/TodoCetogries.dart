import 'package:flutter/material.dart';

class TodoCategory extends StatelessWidget {
  const TodoCategory({super.key, required this.categoryName, required this.categoryImage});

  final String categoryName;
  final String categoryImage;


  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Container(
          width: 100,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                color: Colors.indigo.withOpacity(0.5),
                blurRadius: 10,
                offset: const Offset(1, 1))
          ], borderRadius: BorderRadius.circular(10), color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Image(image: AssetImage(categoryImage),width: 100,
                  height: 100,
                ),
                Text(categoryName,style: const TextStyle(
                    fontSize: 20,
                    color: Colors.indigo,
                    fontWeight: FontWeight.w500
                )),
              ],

            ),
          ),
        ),
      ),
    );
}
}
