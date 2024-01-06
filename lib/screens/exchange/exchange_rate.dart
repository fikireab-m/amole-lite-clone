import 'package:amole_lite/constants/const_colors.dart';
import 'package:amole_lite/screens/widgets/appbar.dart';
import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';

class ExchageRate extends StatelessWidget {
  const ExchageRate({super.key});

  @override
  Widget build(BuildContext context) {
    final sc = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 116.0, 16.0, 0.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: sc.height - 200,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 16.0, bottom: 4.0),
                        child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemBuilder: (context, i) {
                            return i == 0
                                ? Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 48,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Text(
                                                'Ethiopian Birr Exchange Rates'),
                                            Text(
                                                'Rates Updated ${DateTime.now()}')
                                          ],
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(top: 24.0),
                                        child: DefaultTextStyle(
                                          style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 18.0,
                                            color: ColorConst.darkTextColor,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("CURRENCY"),
                                              Text("BUY"),
                                              Text("SELL"),
                                            ],
                                          ),
                                        ),
                                      ),
                                      const Divider(height: 8.0)
                                    ],
                                  )
                                : DefaultTextStyle(
                                    style: const TextStyle(
                                      fontSize: 16.0,
                                      color: ColorConst.darkTextColor,
                                    ),
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 8.0),
                                      decoration: const BoxDecoration(
                                        border: Border(
                                          bottom: BorderSide(
                                              width: 1.0,
                                              color: ColorConst
                                                  .lightGrayBackground),
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
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
                                      ),
                                    ),
                                  );
                          },
                          itemCount: 24,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                const SizedBox(height: 64.0, child: AmoleAppBar()),
                const Divider(
                  height: 2,
                  thickness: 2.0,
                  color: ColorConst.primaryColor,
                  indent: 0,
                ),
                AppBar(
                  backgroundColor: ColorConst.lightBackground,
                  surfaceTintColor: ColorConst.lightBackground,
                  shadowColor: ColorConst.lightBlueGrayBackground,
                  elevation: 2.0,
                  leading: GestureDetector(
                    onTap: () {},
                    child: const Icon(Icons.arrow_back_ios),
                  ),
                  title: const Text('Exchange Rates'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
