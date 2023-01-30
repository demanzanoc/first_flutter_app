import 'package:first_flutter_app/home_trips.dart';
import 'package:first_flutter_app/profile_trips.dart';
import 'package:first_flutter_app/search_trips.dart';
import 'package:flutter/material.dart';

class PlatziTrips extends StatefulWidget {
  const PlatziTrips({super.key});

  @override
  State<StatefulWidget> createState() {
    return _PlatziTrips();
  }
}

class _PlatziTrips extends State<PlatziTrips> {
  int indexItem = 0;

  final List<Widget> widgetsChildren = [
    HomeTrips(),
    const SearchTrips(),
    const ProfileTrips(),
  ];

  void onItemTap(int index) {
    setState(() {
      indexItem = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetsChildren[indexItem],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onItemTap,
        currentIndex: indexItem,
        selectedItemColor: Colors.indigo,
        unselectedItemColor: Colors.blueGrey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Inicio",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Buscar",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Perfil",
          ),
        ],
      ),
    );
  }
}
