import 'package:amole_lite/screens/exchange/exchange_rate.dart';
import 'package:amole_lite/screens/login/login.dart';
import 'package:amole_lite/screens/more/more_options.dart';
import 'package:amole_lite/screens/ussd/ussd.dart';
import 'package:amole_lite/screens/widgets/bottom_nav.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;
  final List<Widget> pages = [
    const ExchageRate(),
    const USSD(),
    const MoreOptions(),
  ];
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LoginPage(),
      bottomNavigationBar: BottomNavigation(
        routes: ['Exchange', 'USSD', 'More'],
      ),
    );
  }
}
