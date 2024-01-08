import 'package:amole_lite/constants/const_colors.dart';
import 'package:amole_lite/screens/widgets/appbar.dart';
import 'package:flutter/material.dart';

class PageLayout extends StatelessWidget {
  final Widget child;
  final String appbarTitle;
  const PageLayout({super.key, required this.child, required this.appbarTitle});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              snap: true,
              pinned: true,
              floating: true,
              expandedHeight: 240,
              flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  appbarTitle,
                  style: const TextStyle(
                    color: ColorConst.darkTextColor,
                    fontSize: 16.0,
                  ),
                ),
                background: const AmoleAppBar(),
              ),
              leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                tooltip: 'go back',
                onPressed: () => Navigator.pop(context),
              ),
            ),
            SliverFillRemaining(
              child: Center(
                child: child,
              ),
            )
          ],
        ),
      ),
    );
  }
}
