import 'package:amole_lite/screens/login/widgets/outlined_btn.dart';
import 'package:flutter/material.dart';

class LoginBtnBar extends StatelessWidget {
  const LoginBtnBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Wrap(
        alignment: WrapAlignment.start,
        spacing: 8.0,
        runAlignment: WrapAlignment.start,
        runSpacing: 8.0,
        children: [
          BtnOutlined(callback: () {}, command: 'Open Amole Wallet'),
          BtnOutlined(callback: () {}, command: 'Get online bank access'),
        ],
      ),
    );
  }
}
