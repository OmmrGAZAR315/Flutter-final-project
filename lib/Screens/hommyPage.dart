import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduationproject/Screens/Account.dart';
import 'package:graduationproject/Screens/search.dart';

import '../components/BottomNavigatorBar.dart';
import 'fav.dart';

class hommyPage extends StatefulWidget {
  @override
  State<hommyPage> createState() => _hommyPage();
}

class _hommyPage extends State<hommyPage> {
  int selectedIndex = 1;

  final screens = [fav(), search(), account()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.orange,
          unselectedItemColor: Colors.grey.withOpacity(0.7),
          iconSize: 30,
          elevation: 0,
          currentIndex: selectedIndex,
          onTap: (index) => setState(() => selectedIndex = index),
          items: [
            BottomNavigationBarItem(
              icon: bottomNavigator(
                selectedIndex: selectedIndex,
                icoon: Icons.favorite,
                number: 0,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: bottomNavigator(
                selectedIndex: selectedIndex,
                icoon: Icons.search,
                number: 1,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: bottomNavigator(
                selectedIndex: selectedIndex,
                icoon: Icons.person,
                number: 2,
              ),
              label: "",
            ),
          ]),
    );
  }
}
