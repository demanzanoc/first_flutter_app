import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  final String networkImage;
  final String name;
  final String details;
  final String comment;

  const Review(this.networkImage, this.name, this.details, this.comment,
      {super.key});

  @override
  Widget build(BuildContext context) {
    Container buildStar(IconData icon) {
      return Container(
        margin: const EdgeInsets.only(top: 3.0, right: 1.5, left: 1.5),
        child: Icon(
          icon,
          color: Colors.amber,
          size: 15.0,
        ),
      );
    }

    final star = buildStar(Icons.star);
    final starHalf = buildStar(Icons.star_half);
    final starBorder = buildStar(Icons.star_border);

    Container buildUserData(String info, double fontSize, Color textColor) {
      return Container(
        margin: const EdgeInsets.only(
          left: 20.0,
        ),
        child: Text(
          info,
          textAlign: TextAlign.left,
          style: TextStyle(
              fontFamily: "Lato", fontSize: fontSize, color: textColor),
        ),
      );
    }

    final userName = buildUserData(name, 17.0, Colors.black54);
    final userInfo = buildUserData(details, 13.0, Colors.black38);
    final userComment = buildUserData(comment, 13.0, Colors.black54);

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        userName,
        Row(
          children: [
            userInfo,
            star,
            star,
            star,
            star,
            starHalf,
          ],
        ),
        userComment,
      ],
    );

    final photo = Container(
      margin: const EdgeInsets.only(
        top: 20.0,
        left: 20.0,
      ),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
            image: NetworkImage(networkImage), fit: BoxFit.cover),
      ),
    );

    return Row(
      children: [
        photo,
        userDetails,
      ],
    );
  }
}
