import 'package:amole_lite/constants/const_colors.dart';
import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';

class ExchangeRow extends StatelessWidget {
  const ExchangeRow({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: const TextStyle(
        fontSize: 16.0,
        color: ColorConst.darkTextColor,
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 8.0,
          horizontal: 4.0,
        ),
        decoration: const BoxDecoration(
          color: ColorConst.lightBackground,
          border: Border(
            bottom:
                BorderSide(width: 1.0, color: ColorConst.lightGrayBackground),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CountryFlag.fromCountryCode(
                  'AE',
                  height: 32,
                  width: 32,
                  borderRadius: 8,
                ),
                const SizedBox(width: 16.0),
                const Text("AED"),
              ],
            ),
            const Text("13.8092"),
            const Text("14.08538"),
          ],
        ),
      ),
    );
  }
}
