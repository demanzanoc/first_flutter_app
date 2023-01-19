import 'package:flutter/material.dart';
import 'gradient_back.dart';
import 'card_image_list.dart';

class HeaderAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        GradientBack("Bienvenido"),
        CardImageList(
          "https://thumbs.dreamstime.com/b/paisajes-de-yosemite-46208063.jpg",
          "https://elviajerofeliz.com/wp-content/uploads/2015/09/paisajes-de-Canada.jpg",
          "https://cdn.shortpixel.ai/spai/q_lossless+w_1082+to_webp+ret_img/https://independent-photo.com/wp-content/uploads/2022/02/Yifeng-Ding-scaled.jpeg",
        ),
      ],
    );
  }
}
