import 'package:flutter/material.dart';

class bottomNavigator extends StatelessWidget {
  bottomNavigator(
      {required this.selectedIndex, required this.icoon, required this.number});

  int selectedIndex;
  IconData icoon;
  int number;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: selectedIndex == number
              ? Colors.orange.shade50
              : Colors.white.withOpacity(0),
          borderRadius: BorderRadius.circular(10)),
      padding: EdgeInsets.all(8),
      child: Icon(
        icoon,
      ),
    );
  }
}
