import 'package:amole_lite/config/path.dart';
import 'package:amole_lite/constants/const_colors.dart';
import 'package:amole_lite/screens/exchange/exchange_rate.dart';
import 'package:amole_lite/screens/login/login.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;
  final List<Widget> pages = [
    const ExchageRate(),
    const Scaffold(
      body: Center(
        child: Text("data"),
      ),
    ),
    const Scaffold(
      body: Center(
        child: Text("data"),
      ),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: Theme(
        data: ThemeData(splashColor: Colors.transparent),
        child: BottomNavigationBar(
          selectedItemColor: ColorConst.primaryColor,
          backgroundColor: ColorConst.lightBackground,
          currentIndex: pageIndex,
          onTap: (i) {
            setState(() {
              pageIndex = i;
            });
          },
          items: [
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
          ],
        ),
      ),
    );
  }
}
