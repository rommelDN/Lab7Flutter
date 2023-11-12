import 'package:flutter/material.dart';
import 'dart:math';

class CardImageWidgets extends StatelessWidget {
  final List<String> imageUrls = [
    'https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/media/image/2018/02/15-mejores-peliculas-ver-netflix_9.jpg?tf=3840x',
    'https://static1.cbrimages.com/wordpress/wp-content/uploads/2022/11/Indiana-Jones-5-Poster-Crop.jpg',
    'https://news.tfw2005.com/wp-content/uploads/sites/10/2023/04/ROTB-Promotional-poster-01-1278x665.jpg',
  ];

  final Random random = Random();

  CardImageWidgets({Key? key});

  String getRandomImageUrl() {
    return imageUrls[random.nextInt(imageUrls.length)];
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0), // Mismo radio que el del Card
        child: Image(
          image: NetworkImage(getRandomImageUrl()),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
