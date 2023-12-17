import 'package:flutter/material.dart';

class ButCommon extends StatefulWidget {
  final VoidCallback callback;
  final String command;
  const ButCommon({super.key, required this.callback, required this.command});

  @override
  State<ButCommon> createState() => _ButCommonState();
}

class _ButCommonState extends State<ButCommon> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.callback,
      child: Text(widget.command),
    );
  }
}
