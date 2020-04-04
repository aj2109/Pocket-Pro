import 'package:flutter/material.dart';
import 'package:pocketpro/home_page.dart';

import 'search_page.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.indigo[400],
      unselectedItemColor: Colors.grey[500],
      currentIndex: selectedIndex,
      backgroundColor: Colors.white,
      onTap: (int index) {
        setState(() {
          selectedIndex = index;
          switch (index) {
            case 0:
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyHomePage(),
                ),
              );
              break;
            case 1:
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SearchPage(),
                ),
              );
              break;
          }
        });
      },
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          title: Text(""),
          icon: Icon(
            Icons.home,
            size: 40,
          ),
        ),
        BottomNavigationBarItem(
          title: Text(""),
          icon: Icon(
            Icons.add_circle,
            size: 40,
          ),
        ),
        BottomNavigationBarItem(
          title: Text(""),
          icon: Icon(
            Icons.message,
            size: 40,
          ),
        )
      ],
    );
  }
}