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
        children: [
          Container(
            height: 160.0,
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
                      width: 120.0,
                      height: 120.0,
                    ),
                    Image.asset(
                      Images.appIcon,
                      fit: BoxFit.scaleDown,
                      width: 120.0,
                      height: 120.0,
                    ),
                    const SizedBox(
                      width: 116,
                      child: DefaultTextStyle(
                        style: TextStyle(color: Color(0xFF003CFF)),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                'አሞሌ',
                                style: TextStyle(fontSize: 48.0),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                'AMOLE',
                                style: TextStyle(fontSize: 18.0),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                'Powered by DASHEN BANK',
                                style: TextStyle(fontSize: 8.0),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
