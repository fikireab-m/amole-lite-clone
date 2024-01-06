import 'package:amole_lite/screens/widgets/outlined_btn.dart';
import 'package:flutter/material.dart';

class LoginBtnBar extends StatelessWidget {
  const LoginBtnBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Wrap(
        alignment: WrapAlignment.center,
        spacing: 8.0,
        runAlignment: WrapAlignment.center,
        runSpacing: 8.0,
        children: [
          BtnOutlined(callback: () {}, command: 'Open Amole Wallet'),
          BtnOutlined(callback: () {}, command: 'Get online bank access'),
        ],
      ),
    );
  }
}
