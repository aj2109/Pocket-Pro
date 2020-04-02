import 'package:flutter/material.dart';

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
      backgroundColor: Colors.grey[50],
      onTap: (int index) {
        setState(() {
          selectedIndex = index;
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
            Icons.search,
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
