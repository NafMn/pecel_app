import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TagMenu extends StatefulWidget {
  const TagMenu({super.key});

  @override
  State<TagMenu> createState() => _TagMenuState();
}

class _TagMenuState extends State<TagMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.horizontal,
                      children: <Widget> [
                        SizedBox(
                          width: 180,
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                            child: MenuButton(
                                icon: FontAwesomeIcons.bowlFood,
                                title: 'Menu Spesial',
                                color: Colors.green),
                          ),
                        ),
                        SizedBox(
                          width: 150,
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                            child: MenuButton(
                                icon: FontAwesomeIcons.utensils,
                                title: 'Menu Terlaris',
                                color: Colors.red),
                          ),
                        ),
                        SizedBox(
                          width: 150,
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                            child: MenuButton(
                                icon: FontAwesomeIcons.glassMartini,
                                title: 'Minuman',
                                color: Colors.blue),
                          ),
                        ),
                      ],
      )
    );
  }
}



class MenuButton extends StatelessWidget {
  final String title;
  final Color color;
  final IconData icon;

  const MenuButton(  {super.key, required this.title, required this.color, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      color: color,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon, size: 20, color: Colors.white),
                SizedBox(width: 5),
              ],
            ),
            Text(title, style: const TextStyle(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}