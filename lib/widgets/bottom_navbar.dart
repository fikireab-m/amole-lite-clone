import 'package:amole_lite/config/path.dart';
import 'package:flutter/material.dart';

class AmoleBottomNavBar extends StatelessWidget {
  const AmoleBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: [
      BottomNavigationBarItem(
          icon: Image.asset(Images.graphIcon), label: 'Exchange'),
      BottomNavigationBarItem(
          icon: Image.asset(Images.graphIcon), label: 'USSD'),
      BottomNavigationBarItem(
          icon: Image.asset(Images.graphIcon), label: 'More'),
    ]);
  }
}
