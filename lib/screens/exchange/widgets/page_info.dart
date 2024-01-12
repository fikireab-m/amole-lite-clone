import 'package:amole_lite/constants/const_colors.dart';
import 'package:flutter/material.dart';

class ExPageInfo extends StatelessWidget {
  const ExPageInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 48,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Ethiopian Birr Exchange Rates',
              ),
              Text(
                'Rates Updated ${DateTime.now()}',
              )
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 24.0),
          child: DefaultTextStyle(
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 18.0,
              color: ColorConst.darkTextColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("CURRENCY"),
                Text("BUY"),
                Text("SELL"),
              ],
            ),
          ),
        ),
        const Divider(height: 8.0)
      ],
    );
  }
}
