import 'package:first_flutter_app/button_purple.dart';
import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget {
  final String namePlace;
  final int numberOfStars;
  final String descriptionPlace;

  const DescriptionPlace(
      this.namePlace, this.numberOfStars, this.descriptionPlace,
      {super.key});

  @override
  Widget build(BuildContext context) {
    Container buildStar(IconData icon) {
      return Container(
        margin: const EdgeInsets.only(top: 323.0, right: 3.0),
        child: Icon(
          icon,
          color: Colors.amber,
        ),
      );
    }

    final star = buildStar(Icons.star);
    final starHalf = buildStar(Icons.star_half);
    final starBorder = buildStar(Icons.star_border);

    final descriptionText = Container(
      margin: const EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: 20.0,
      ),
      child: Text(
        descriptionPlace,
        style: const TextStyle(
            fontFamily: "Lato",
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
            color: Color(0xFF56575a)),
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              margin: const EdgeInsets.only(
                top: 320.0,
                left: 20.0,
                right: 20.0,
              ),
              child: Text(
                namePlace,
                style: const TextStyle(
                  fontFamily: "Lato",
                  fontSize: 30.0,
                  fontWeight: FontWeight.w900,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Row(
              children: [
                star,
                star,
                star,
                star,
                starBorder,
              ],
            ),
          ],
        ),
        descriptionText,
        const ButtonPurple("Navigate")
      ],
    );
  }
}
