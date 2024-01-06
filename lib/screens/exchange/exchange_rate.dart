import 'package:amole_lite/constants/const_colors.dart';
import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';

class ExchageRate extends StatelessWidget {
  const ExchageRate({super.key});

  @override
  Widget build(BuildContext context) {
    final sc = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {},
          child: const Icon(
            Icons.arrow_back_ios_new,
          ),
        ),
        title: const Text('Exchage Rates'),
        elevation: 8.0,
        scrolledUnderElevation: 8.0,
        shadowColor: ColorConst.lightBackground,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 108,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 16.0),
                      child: Text('Ethiopian Birr Exchange Rates'),
                    ),
                    Text('Rates Updated ${DateTime.now()}'),
                    const DefaultTextStyle(
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: ColorConst.grayTextColor,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("CURRENCY"),
                          Text("BUY"),
                          Text("SELL"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(height: 16.0),
              SizedBox(
                height: sc.height - 140,
                child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, i) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CountryFlag.fromCountryCode(
                              'AE',
                              height: 32,
                              width: 32,
                              borderRadius: 8,
                            ),
                            const SizedBox(width: 16.0),
                            const Text("AED"),
                          ],
                        ),
                        const Text("13.8092"),
                        const Text("14.08538"),
                      ],
                    );
                  },
                  separatorBuilder: (context, i) {
                    return const Divider(height: 16.0);
                  },
                  itemCount: 100,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
