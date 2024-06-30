import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';

class TitleMenu extends StatelessWidget {
  const TitleMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      alignment: Alignment.topLeft,
        child: Text(
          'Menu Pilihan',
          style: TextStyle(
            color: Colors.brown,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
    );
  }
}


class MenuList extends StatelessWidget {
  const MenuList({super.key});

  @override
  Widget build(BuildContext context) { 
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
            child: Column(
              children: [
                PecelMenuItem(
                  imageUrl: 'https://i.ibb.co.com/s1RpfXD/pecel.jpg',
                  title: 'Pecel Sambel Tumpang',
                  rating: 4.5,
                  description: 'Pecel, Sambel Tumpang, Telur Bali, Sate Usus,...',
                ),
                PecelMenuItem(
                  imageUrl: 'https://i.ibb.co.com/s1RpfXD/pecel.jpg',
                  title: 'Pecel Sambel Bawang',
                  rating: 2.5,
                  description: 'Pecel, Sambel Bawang, Tempe, Tahu,...',
                ),
                PecelMenuItem(
                  imageUrl: 'https://i.ibb.co.com/Smfw2R0/pecel2.jpg',
                  title: 'Pecel Sambel Cabe',
                  rating: 4.5,
                  description: 'Pecel, Sambel Cabe, Tempe, Tahu,...',
                ),
                PecelMenuItem(
                  imageUrl: 'https://i.ibb.co.com/Smfw2R0/pecel2.jpg',
                  title: 'Pecel Sambel Udang',
                  rating: 3.5,
                  description: 'Pecel, Sambel Udang, Tempe, Tahu,...',
                ),
                PecelMenuItem(
                  imageUrl: 'https://i.ibb.co.com/Smfw2R0/pecel2.jpg',
                  title: 'Pecel Sambel Cumi',
                  rating: 4.5,
                  description: 'Pecel, Sambel Cumi, Tempe, Tahu,...',
                ),
              ],
            ),
          );
  }
}

class MenuLaris extends StatelessWidget {
  const MenuLaris({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20),
            padding: const EdgeInsets.all(10),
            alignment: Alignment.topLeft,
            child: Text(
              'Menu Laris',
              style: TextStyle(
                color: Colors.brown,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 200,
            padding: const EdgeInsets.all(10),
            child: CardSwiper(
              cardsCount: 3, 
              numberOfCardsDisplayed: 2,
              cardBuilder: (context, index, percentThresholdX, percentThresholdY) {
                if (index == 0) {
                  return PecelMenuItem(
                    imageUrl: 'https://i.ibb.co.com/Smfw2R0/pecel2.jpg',
                    title: 'Pecel Sambel Cumi',
                    rating: 4.5,
                    description: 'Pecel, Sambel Cumi, Tempe, Tahu,...',
                  );
                } else {
                  return PecelMenuItem(
                    imageUrl: 'https://i.ibb.co.com/Smfw2R0/pecel2.jpg',
                    title: 'Pecel Sambel tahu',
                    rating: 5,
                    description: 'Pecel, Sambel Cumi, Tempe, Tahu,...',
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}


class PecelMenuItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final double rating;
  final String description;

  const PecelMenuItem({super.key, required this.imageUrl, required this.title, required this.rating, required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: ListTile(
          leading: Image.network(
            imageUrl,
            width: MediaQuery.of(context).size.width * 0.2,
            height: MediaQuery.of(context).size.height * 0.5,
            fit: BoxFit.cover,
          ),
          title: Text(
            title,
            style: const TextStyle(fontSize: 18),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: List.generate(5, (index) {
                  return Icon(
                    index < rating ? Icons.star : Icons.star_border,
                    size: 22,
                    color: Colors.amber,
                  );
                }),
              ),
              Text(
                description,
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}