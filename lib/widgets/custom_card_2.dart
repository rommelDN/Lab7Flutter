
import 'package:flutter/material.dart';

class CardImageWidget extends StatelessWidget {
  
  const CardImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Card(
      elevation: 10,
      child: Column(
        children: [
          Image(
            image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNnxVFJrfU7uo8JnNctV2DESshVvq6-G-pYA&usqp=CAU'),
            fit: BoxFit.cover)
        ],
      ),
    );
  }
}