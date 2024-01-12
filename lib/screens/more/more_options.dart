import 'package:amole_lite/constants/const_colors.dart';
import 'package:amole_lite/screens/Layout/layout.dart';
import 'package:amole_lite/screens/more/widgets/option_tile.dart';
import 'package:flutter/material.dart';

class MoreOptions extends StatelessWidget {
  const MoreOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const PageLayout(
            appbarTitle: "More functions",
            content: MoreOptionTile(
              icon: Icons.security,
              title: "Privacy and Security",
            ),
            count: 5,
            pageColor: ColorConst.lightGrayBackground,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration:
                  const BoxDecoration(color: ColorConst.lightBackground),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Text("Having difficulties?"),
                  TextButton(
                      onPressed: () {}, child: const Text(" Contact Us")),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
