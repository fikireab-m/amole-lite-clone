import 'package:amole_lite/config/path.dart';
import 'package:amole_lite/constants/const_colors.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  final List<String> routes;
  const BottomNavigation({
    super.key,
    required this.routes,
  });

  @override
  Widget build(BuildContext context) {
    const icons = [Images.graphIcon, Images.ussdIcon, Images.moreIcon];
    List<Widget> items = [0, 1, 2]
        .map((i) => InkWell(
              onTap: () => Navigator.pushNamed(
                context,
                '/${routes[i].toLowerCase()}',
                arguments: {},
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    icons[i],
                    height: 24,
                    width: 32,
                  ),
                  Text(routes[i]),
                ],
              ),
            ))
        .toList();
    return PreferredSize(
      preferredSize: const Size.fromHeight(64.0),
      child: Container(
        height: 56,
        margin: const EdgeInsets.all(8.0),
        padding: const EdgeInsets.all(4.0),
        decoration: BoxDecoration(
            color: ColorConst.lightBackground,
            borderRadius: BorderRadius.circular(28.0),
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
          children: items,
        ),
      ),
    );
  }
}
