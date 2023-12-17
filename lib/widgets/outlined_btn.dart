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
    return OutlinedButton(
      onPressed: widget.callback,
      child: Text(widget.command),
    );
  }
}
