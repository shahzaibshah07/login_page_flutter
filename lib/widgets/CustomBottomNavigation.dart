import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatefulWidget {


  const CustomBottomNavigation({super.key});

  @override
  State<CustomBottomNavigation> createState() => _CustomBottomNavigationState();
}

class _CustomBottomNavigationState extends State<CustomBottomNavigation> {
  int myIndex = 0;
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return  BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      selectedLabelStyle: TextStyle(color: Colors.deepOrange),
      unselectedLabelStyle: TextStyle(color: Colors.grey),
      selectedItemColor: Colors.deepOrange,
      unselectedItemColor: Colors.grey,
      elevation: 0,
      onTap: (index) {
        setState(() {
          myIndex = index;
          _selectedIndex = index;
        });
      },
      currentIndex: myIndex,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home, color: _selectedIndex == 0 ? Colors.deepOrange : Colors.grey),
          label: 'Home',
          backgroundColor: Colors.blue,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.call, color: _selectedIndex == 1 ? Colors.deepOrange : Colors.grey),
          label: 'Call',
          backgroundColor: Colors.green,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search, color: _selectedIndex == 2 ? Colors.deepOrange : Colors.grey),
          label: 'Search',
          backgroundColor: Colors.red,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person, color: _selectedIndex == 3 ? Colors.deepOrange : Colors.grey),
          label: 'Profile',
          backgroundColor: Colors.yellow,
        ),
      ],

    );
  }
}
