import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ListItems extends StatelessWidget {
  const ListItems(
      {super.key,
      required this.title,
      required this.iconLeading,
      required this.screen});

  final String title;
  final IconData iconLeading;
  final Widget? screen;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => {
              if (screen != null)
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => screen!),
                  )
                }
            },
        child: Column(
          children: [
            ListTile(
              title: Text(title),
              leading: Icon(iconLeading, size: 20, color: Colors.indigo),
              trailing: IconButton(
                  icon: const Icon(
                    FontAwesomeIcons.chevronRight,
                    size: 15,
                  ),
                  onPressed: () {
                    if (screen != null) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => screen!),
                      );
                    }
                  }),
            ),
            const Divider()
          ],
        ));
  }
}
