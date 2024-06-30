import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
      body: SingleChildScrollView(
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const PecelHeader(),
      SizedBox(
        height: 100,
         // Responsif
        child: TagMenu(),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0), // Margin responsif
        child: TitleMenu(),
      ),
      SizedBox(
        height: MediaQuery.of(context).size.height * 0.5, // Responsif
        child: MenuList(),
      ),
      SizedBox(
        height: MediaQuery.of(context).size.height * 0.6, // Responsif
        width: double.infinity,
        child: MenuLaris(),
      ),
    ],
  ),
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 90,
          width: 80,
          margin: EdgeInsets.only(bottom: 10),
            child: FlutterClipPolygon(
              sides: 6,
              child: Container(
                color: Colors.yellow[200],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(FontAwesomeIcons.book, size: 25),
                    const Text('Menu', style: TextStyle(fontSize: 10)),
                  ],
                ),
              ),
            ),
          ),
      ),
      );
  }
}




// Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const PecelHeader(),
//             SizedBox(
//               height: 100,
//               width: 500,
//               child: TagMenu(),
//             ),
//             SizedBox(
//               child: TitleMenu(),
//             ),
//             Expanded(
//               child: MenuList(),
//             ),
//             Expanded(
//               child:MenuLaris(),)
//           ],
//         ),