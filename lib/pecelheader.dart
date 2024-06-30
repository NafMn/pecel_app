import 'package:flutter/material.dart';

class PecelHeader extends StatelessWidget {
  const PecelHeader({super.key});

  @override
  Widget build(BuildContext context) {
    var promo = Container(
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.only(bottom: 10.0),
      height: 150.0,
      width: 230.0,
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
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:[
        
        Expanded(child: promo),
        Expanded(child: promo),
      ],
    );

    return row;
  }
}