import 'package:amole_lite/config/path.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final sc = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: sc.width,
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Color(0xFF003CFF),
                  width: 2.0,
                ),
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      Images.dashenBank,
                      fit: BoxFit.scaleDown,
                      height: 120.0,
                    ),
                    const SizedBox(width: 8.0),
                    Image.asset(
                      Images.amoleLogo,
                      fit: BoxFit.scaleDown,
                      width: 120.0,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DropdownButton<String>(
                    value: 'Male',
                    items: const [
                      DropdownMenuItem(child: Text('Male'), value: 'Male'),
                      DropdownMenuItem(child: Text('Female'), value: 'Female'),
                      DropdownMenuItem(child: Text('Other'), value: 'Other'),
                    ],
                    onChanged: (value) {
                      setState(() {
                        // Update the selected value
                      });
                    },
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
