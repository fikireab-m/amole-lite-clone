import 'package:amole_lite/constants/const_colors.dart';
import 'package:amole_lite/screens/widgets/common_btn.dart';
import 'package:flutter/material.dart';

class UssdPageInfo extends StatelessWidget {
  const UssdPageInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 16.0),
          padding: const EdgeInsets.symmetric(
            horizontal: 12.0,
            vertical: 16.0,
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24.0),
              color: ColorConst.lightBackground),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('USSD Code'),
              GestureDetector(
                child: RichText(
                  text: const TextSpan(
                    style: TextStyle(
                      color: ColorConst.darkTextColor,
                    ),
                    children: [
                      TextSpan(text: '*996#'),
                      WidgetSpan(
                        child: Icon(Icons.copy),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 8.0,
          ),
          child: ButCommon(
            callback: () {},
            command: 'Enter USSD mode',
            color: ColorConst.primaryColor,
            size: 56.0,
            fSize: 18.0,
            radius: 24.0,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(12.0),
          width: double.infinity,
          margin: const EdgeInsets.only(top: 16.0),
          color: ColorConst.lightBackground,
          child: const Text('QUICK USSDS'),
        )
      ],
    );
  }
}
