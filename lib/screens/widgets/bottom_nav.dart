import 'package:amole_lite/config/path.dart';
import 'package:amole_lite/constants/const_colors.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(64.0),
      child: Container(
        margin: const EdgeInsets.all(8.0),
        padding: const EdgeInsets.all(4.0),
        decoration: BoxDecoration(
            color: ColorConst.lightBackground,
            borderRadius: BorderRadius.circular(24.0),
            boxShadow: const [
              BoxShadow(
                color: ColorConst.lightGrayBackground,
                blurRadius: 1.5,
                spreadRadius: 1.5,
                offset: Offset(0, -1),
              ),
              BoxShadow(
                color: ColorConst.lightGrayBackground,
                blurRadius: 1.5,
                spreadRadius: 1.5,
                offset: Offset(0, 1),
              )
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    Images.graphIcon,
                    height: 24,
                    width: 32,
                  ),
                  const Text('Exchange'),
                ],
              ),
            ),
            InkWell(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    Images.ussdIcon,
                    height: 24,
                    width: 32,
                  ),
                  const Text('USSD'),
                ],
              ),
            ),
            InkWell(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    Images.moreIcon,
                    height: 24,
                    width: 32,
                  ),
                  const Text('More'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
