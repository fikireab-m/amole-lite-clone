import 'package:amole_lite/constants/const_colors.dart';
import 'package:flutter/material.dart';

class ExchageRate extends StatelessWidget {
  const ExchageRate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios_new,
          color: ColorConst.primaryColor,
        ),
        title: const Text('Exchage Rates'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Ethiopian Birr Exchange Rates'),
              const SizedBox(height: 8.0),
              Text('Rates Updated ${DateTime.now()}')
            ],
          ),
        ),
      ),
    );
  }
}
