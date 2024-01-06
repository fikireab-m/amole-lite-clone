import 'package:amole_lite/constants/const_colors.dart';
import 'package:amole_lite/screens/login/widgets/common_btn.dart';
import 'package:amole_lite/screens/ussd/widgets/ussd_tile.dart';
import 'package:amole_lite/screens/widgets/appbar.dart';
import 'package:flutter/material.dart';

class USSD extends StatelessWidget {
  const USSD({super.key});

  @override
  Widget build(BuildContext context) {
    final sc = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConst.lightGrayBackground,
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 116.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: sc.height - 200,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 16.0, bottom: 4.0),
                        child: ListView.separated(
                          scrollDirection: Axis.vertical,
                          itemBuilder: (context, i) {
                            return i == 0
                                ? Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            8.0, 8.0, 8.0, 16.0),
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 12.0,
                                          vertical: 16.0,
                                        ),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(24.0),
                                            color: ColorConst.lightBackground),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            const Text('USSD Code'),
                                            GestureDetector(
                                              child: RichText(
                                                text: const TextSpan(
                                                  style: TextStyle(
                                                    color: ColorConst
                                                        .darkTextColor,
                                                  ),
                                                  children: [
                                                    TextSpan(text: '*996#'),
                                                    WidgetSpan(
                                                      child: Icon(Icons.copy),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0,
                                        ),
                                        child: ButCommon(
                                          callback: () {},
                                          command: 'Enter USSD mode',
                                          color: ColorConst.primaryColor,
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.all(12.0),
                                        width: double.infinity,
                                        margin:
                                            const EdgeInsets.only(top: 16.0),
                                        color: ColorConst.lightBackground,
                                        child: const Text('QUICK USSDS'),
                                      )
                                    ],
                                  )
                                : const UssdTile();
                          },
                          itemCount: 10,
                          separatorBuilder: (BuildContext context, i) {
                            return const Divider(height: 2.0);
                          },
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
                  title: const Text('USSD'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
