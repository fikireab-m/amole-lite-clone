import 'package:amole_lite/constants/const_colors.dart';
import 'package:flutter/material.dart';

class ButCommon extends StatelessWidget {
  final VoidCallback callback;
  final String command;
  final Color color;
  final double fSize;
  final double radius;
  final double size;
  const ButCommon({
    super.key,
    required this.callback,
    required this.command,
    required this.color,
    required this.fSize,
    required this.size,
    required this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: size,
      child: ElevatedButton(
        onPressed: callback,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
        ),
        child: Text(
          command,
          style: TextStyle(
            color: ColorConst.lightBackground,
            fontSize: fSize,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
