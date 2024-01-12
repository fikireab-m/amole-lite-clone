import 'package:amole_lite/constants/const_colors.dart';
import 'package:amole_lite/screens/Layout/layout.dart';
import 'package:amole_lite/screens/ussd/widgets/page_info.dart';
import 'package:amole_lite/screens/ussd/widgets/ussd_tile.dart';
import 'package:flutter/material.dart';

class USSD extends StatelessWidget {
  const USSD({super.key});

  @override
  Widget build(BuildContext context) {
    return const PageLayout(
      appbarTitle: "USSD",
      header: UssdPageInfo(),
      content: UssdTile(),
      count: 10,
      pageColor: ColorConst.lightGrayBackground,
    );
  }
}
