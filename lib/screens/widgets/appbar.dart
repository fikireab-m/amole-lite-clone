import 'package:amole_lite/config/path.dart';
import 'package:flutter/material.dart';

class AmoleAppBar extends StatelessWidget {
  final List<Widget> appbarActions;
  const AmoleAppBar({super.key, required this.appbarActions});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            Images.dashenBank,
            fit: BoxFit.scaleDown,
            height: 56.0,
          ),
          const SizedBox(width: 8.0),
          Image.asset(
            Images.amoleLogo,
            fit: BoxFit.scaleDown,
            height: 56.0,
          ),
        ],
      ),
      actions: appbarActions,
    );
  }
}