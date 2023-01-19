import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget {
  final String firstImage;
  final String secondImage;
  final String thirdImage;

  const CardImageList(this.firstImage, this.secondImage, this.thirdImage,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350.0,
      child: ListView(
        padding: const EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: [
          CardImage(firstImage),
          CardImage(secondImage),
          CardImage(thirdImage),
        ],
      ),
    );
  }
}
