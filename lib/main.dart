import 'package:amole_lite/screens/exchange/exchange_rate.dart';
import 'package:amole_lite/screens/home/home.dart';
import 'package:amole_lite/screens/login/login.dart';
import 'package:amole_lite/screens/ussd/ussd.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Amole Lite',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
          useMaterial3: true,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const HomePage(),
          '/login': (context) => const LoginPage(),
          '/exchange': (context) => const ExchageRate(),
          '/ussd': (context) => const USSD(),
          '/more': (context) => const Scaffold(
                body: Center(
                  child: Text('More options'),
                ),
              ),
        });
  }
}
