import 'package:amole_lite/constants/const_colors.dart';
import 'package:flutter/material.dart';

class BtnOutlined extends StatefulWidget {
  final VoidCallback callback;
  final String command;
  const BtnOutlined({super.key, required this.callback, required this.command});

  @override
  State<BtnOutlined> createState() => _BtnOutlinedState();
}

class _BtnOutlinedState extends State<BtnOutlined> {
  @override
  Widget build(BuildContext context) {
    final sc = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: widget.callback,
      child: Container(
        width: sc.width / 2 - 32,
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: ColorConst.primaryColor, width: 1.0),
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Center(
          child: Text(
            widget.command,
          ),
        ),
      ),
    );
  }
}
