import 'package:amole_lite/constants/const_colors.dart';
import 'package:amole_lite/screens/Layout/layout.dart';
import 'package:amole_lite/screens/more/widgets/option_tile.dart';
import 'package:flutter/material.dart';

class MoreOptions extends StatelessWidget {
  const MoreOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return const PageLayout(
      appbarTitle: "More functions",
      content: MoreOptionTile(
        icon: Icons.security,
        title: "Privacy and Security",
      ),
      count: 5,
      pageColor: ColorConst.lightGrayBackground,
    );
  }
}
