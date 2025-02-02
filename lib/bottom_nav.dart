import 'package:flutter/material.dart';
import 'package:project/searchpt.dart';
import 'package:project/profile.dart';
import 'package:project/search.dart';

class BottomNavigationbar extends StatefulWidget {
  const BottomNavigationbar({super.key});

  @override
  @override
  // ignore: library_private_types_in_public_api
  _BottomNavigationbarState createState() => _BottomNavigationbarState();
}

class _BottomNavigationbarState extends State<BottomNavigationbar> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    SearchScreen(),
    SearchsScreen(),
    ProfileScreen(),
  ];

  void itemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  /*@override
  Widget build(BuildContext context) {
    return DefaultTabController(
            length: 3,
            child: Scaffold(
                bottomNavigationBar: BottomNavigationBar(
                  currentIndex: _selectedIndex,
                  onTap: itemTapped,
                  items: const <BottomNavigationBarItem>[
                    BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                    BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
                    BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
                  ],
                ),
                body: _screens.elementAt(_selectedIndex),
                            )
                        );
                  }
                }
  }*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My App")),
      body: IndexedStack(
        index: _selectedIndex,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: itemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
