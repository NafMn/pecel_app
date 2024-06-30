import 'package:flutter/material.dart';

class PecelHeader extends StatelessWidget {
  const PecelHeader({super.key});

  @override
  Widget build(BuildContext context) {
    var promo = Container(
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.only(bottom: 10.0,right: 2.0),
      // height: 150.0,
      // width: 230.0,
      height: MediaQuery.of(context).size.height * 0.5,
      width: MediaQuery.of(context).size.width * 0.7,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://i.ibb.co.com/s1RpfXD/pecel.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.black.withOpacity(0.8),
                  Colors.black.withOpacity(0.5),
                  Colors.transparent,
                ],
              ),
            ),
          ),
          const Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(bottom: 15.0, left: 5.0),
              child: Text(
                'Promo 20%',
                style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(bottom:5.0,left: 5.0),
              child: Text(
                'Untuk 10 pembeli pertama',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ),
          ),
        ],
      ),
       
    );

    var row = Row(
      children:[   
        promo,
        promo,
        promo,
      ],
    );

    var list = Container(
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          row
        ]
      ),
    );

    return list;
  }
}