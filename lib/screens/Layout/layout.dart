import 'package:amole_lite/constants/const_colors.dart';
import 'package:amole_lite/screens/widgets/appbar.dart';
import 'package:flutter/material.dart';

class PageLayout extends StatelessWidget {
  final Widget? header;
  final Widget content;
  final String appbarTitle;
  final int? count;
  final Color? pageColor;
  const PageLayout({
    super.key,
    this.header,
    required this.appbarTitle,
    required this.content,
    this.count = 10,
    this.pageColor = ColorConst.lightBackground,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: pageColor,
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
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, i) => Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                  ),
                  child: i == 0 ? header : content,
                ),
                childCount: count,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
