import 'package:amole_lite/config/path.dart';
import 'package:flutter/material.dart';

class AmoleBottomNavBar extends StatelessWidget {
  const AmoleBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: [
      BottomNavigationBarItem(
          icon: Image.asset(
            Images.graphIcon,
            height: 32,
            width: 32,
          ),
          label: 'Exchange'),
      BottomNavigationBarItem(
          icon: Image.asset(
            Images.ussdIcon,
            height: 32,
            width: 32,
          ),
          label: 'USSD'),
      BottomNavigationBarItem(
          icon: Image.asset(
            Images.moreIcon,
            height: 32,
            width: 32,
          ),
          label: 'More'),
    ]);
  }
}
