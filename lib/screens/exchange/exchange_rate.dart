import 'package:amole_lite/constants/const_colors.dart';
import 'package:amole_lite/screens/Layout/layout.dart';
import 'package:amole_lite/screens/exchange/widgets/exchange_row.dart';
import 'package:flutter/material.dart';

class ExchageRate extends StatelessWidget {
  const ExchageRate({super.key});

  @override
  Widget build(BuildContext context) {
    final sc = MediaQuery.of(context).size;
    return PageLayout(
      child: SizedBox(
        height: sc.height - 160,
        child: Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemBuilder: (context, i) {
              return i == 0
                  ? Column(
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
                    )
                  : const ExchangeRow();
            },
            itemCount: 24,
          ),
        ),
      ),
    );
  }
}
