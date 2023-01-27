import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  const FloatingActionButtonGreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _FloatingActionButtonGreen();
  }
}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen> {
  String snackBarAddedToFav = "Agregado a favoritos";
  String snackBarDeletedOfFav = "Eliminado de favoritos";
  String snackBarText = "";

  Icon iconAddedToFav = const Icon(Icons.favorite);
  Icon iconDeletedOfFav = const Icon(Icons.favorite_border);
  Icon icon = const Icon(Icons.favorite_border);

  late FloatingActionButton floatingActionButton;

  void onPressedFav() {
    setState(() {
      if (floatingActionButton.child == iconDeletedOfFav) {
        icon = iconAddedToFav;
        snackBarText = snackBarAddedToFav;
      } else {
        icon = iconDeletedOfFav;
        snackBarText = snackBarDeletedOfFav;
      }
    });
    showSnackBar();
  }

  void showSnackBar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(snackBarText),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    floatingActionButton = FloatingActionButton(
      backgroundColor: const Color(0xFF11DA53),
      mini: true,
      tooltip: "Favorito",
      onPressed: onPressedFav,
      child: icon,
    );

    return floatingActionButton;
  }
}
