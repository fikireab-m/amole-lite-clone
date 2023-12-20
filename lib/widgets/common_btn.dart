import 'package:flutter/material.dart';

class ButCommon extends StatelessWidget {
  final VoidCallback callback;
  final String command;
  final Color color;
  const ButCommon({
    super.key,
    required this.callback,
    required this.command,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: callback,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            command,
            style: const TextStyle(
              color: Color(0xFFFFFFFF),
              fontSize: 18.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
