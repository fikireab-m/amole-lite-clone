import 'package:amole_lite/constants/const_colors.dart';
import 'package:amole_lite/screens/widgets/appbar.dart';
import 'package:flutter/material.dart';

class PageLayout extends StatelessWidget {
  final Widget child;
  const PageLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 116.0, 16.0, 0.0),
              child: SingleChildScrollView(
                child: child,
              ),
            ),
            Column(
              children: [
                const SizedBox(height: 64.0, child: AmoleAppBar()),
                const Divider(
                  height: 2,
                  thickness: 2.0,
                  color: ColorConst.primaryColor,
                  indent: 0,
                ),
                AppBar(
                  backgroundColor: ColorConst.lightBackground,
                  surfaceTintColor: ColorConst.lightBackground,
                  shadowColor: ColorConst.lightBlueGrayBackground,
                  elevation: 2.0,
                  leading: GestureDetector(
                    onTap: () {},
                    child: const Icon(Icons.arrow_back_ios),
                  ),
                  title: const Text('Exchange Rates'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
