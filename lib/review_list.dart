import 'package:first_flutter_app/review.dart';
import 'package:flutter/material.dart';

class ReviewList extends StatelessWidget {
  final List<Review> reviewList;

  const ReviewList(this.reviewList, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [...reviewList],
    );
  }
}
