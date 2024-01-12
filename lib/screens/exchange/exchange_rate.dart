import 'package:amole_lite/screens/Layout/layout.dart';
import 'package:amole_lite/screens/exchange/widgets/exchange_row.dart';
import 'package:amole_lite/screens/exchange/widgets/page_info.dart';
import 'package:flutter/material.dart';

class ExchageRate extends StatelessWidget {
  const ExchageRate({super.key});

  @override
  Widget build(BuildContext context) {
    return const PageLayout(
      appbarTitle: "Exchange Rates",
      header: ExPageInfo(),
      content: ExchangeRow(),
      count: 16,
    );
  }
}
