import 'package:amole_lite/constants/const_colors.dart';
import 'package:flutter/material.dart';

class MoreOptionTile extends StatelessWidget {
  final IconData icon;
  final String title;
  const MoreOptionTile({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(width: 2.0, color: ColorConst.lightGrayBackground),
        ),
      ),
      child: ListTile(
        leading: Icon(icon),
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Text(title),
        ),
        tileColor: ColorConst.lightBackground,
        trailing: const Icon(
          Icons.arrow_forward_ios,
          size: 14.0,
        ),
      ),
    );
  }
}
