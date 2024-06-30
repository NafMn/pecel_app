import 'package:flutter/material.dart';
import 'package:flutter_polygon_clipper/flutter_polygon_clipper.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pecelapp/pecelheader.dart';
import 'package:pecelapp/tagmenu.dart';
import 'menu.dart';

class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pecel App | NafMn'),
        backgroundColor: Colors.yellow[200],
      ),
      body: Column(
        children: [
          PecelHeader(),
          SizedBox(
            height: 100,
            child: TagMenu(),
          ),
          SizedBox(
            child: TitleMenu(),
          ),
          Expanded(
            child: MenuList(),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Keranjang',
          ),
        ],
      ),
      floatingActionButton: Container(
        height: 90,
        width: 80,
        alignment: Alignment.bottomCenter,
        child: Transform.translate(
          offset: const Offset(-140, 45), // Sesuaikan posisi vertikal
          child: FlutterClipPolygon(
            sides: 6,
            child: Container(
              color: Colors.yellow[200],
              padding: const EdgeInsets.all(10),
              child: const Icon(FontAwesomeIcons.book, size: 25),
            ),
          ),
        ),
      ),
    );
  }
}
