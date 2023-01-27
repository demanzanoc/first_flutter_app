import 'package:first_flutter_app/review.dart';
import 'package:first_flutter_app/review_list.dart';
import 'package:flutter/material.dart';

import 'description_place.dart';
import 'header_appbar.dart';

class HomeTrips extends StatelessWidget {
  final String description =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";
  final List<Review> reviewList = List<Review>.generate(
    3,
    (index) => const Review(
        "https://media.istockphoto.com/id/637885546/photo/looking-stylish-in-paris.jpg?s=612x612&w=0&k=20&c=y4mB3qnnH6wjMEERDf8zR4pdKksFQbK6VFjbSGnLaXA=",
        "Varuna Yasas",
        "1 review 5 photos",
        "There is an amazing place in Sri Lanka"),
    growable: true,
  );

  HomeTrips({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          children: [
            DescriptionPlace("Bahamas", 4, description),
            ReviewList(reviewList),
          ],
        ),
        HeaderAppbar(),
      ],
    );
  }
}
