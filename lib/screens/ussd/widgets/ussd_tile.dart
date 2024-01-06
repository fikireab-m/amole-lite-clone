import 'package:amole_lite/constants/const_colors.dart';
import 'package:flutter/material.dart';

class UssdTile extends StatelessWidget {
  const UssdTile({super.key});

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      leading: Icon(Icons.currency_exchange),
      title: Padding(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        child: Text('Transfer'),
      ),
      tileColor: ColorConst.lightBackground,
      trailing: Icon(
        Icons.arrow_forward_ios,
        size: 14.0,
      ),
    );
  }
}
