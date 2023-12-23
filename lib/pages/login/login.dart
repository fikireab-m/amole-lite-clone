import 'package:amole_lite/config/path.dart';
import 'package:amole_lite/pages/login/widgets/common_btn.dart';
import 'package:amole_lite/pages/login/widgets/form.dart';
import 'package:amole_lite/widgets/input_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String languageLabel = 'Language';
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
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 24.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        Images.dashenBank,
                        fit: BoxFit.scaleDown,
                        height: 80.0,
                      ),
                      const SizedBox(width: 8.0),
                      Image.asset(
                        Images.amoleLogo,
                        fit: BoxFit.scaleDown,
                        width: 180,
                        height: 80,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: popUpMenu(),
                )
              ],
            ),
          ),
          const FormContainer(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ButCommon(
              callback: () {},
              command: 'Login',
              color: const Color(0xFF003CFF),
            ),
          )
        ],
      ),
    );
  }

  Widget popUpMenu() {
    return Theme(
      data: ThemeData(
        splashColor: Colors.transparent,
      ),
      child: PopupMenuButton<String>(
        padding: const EdgeInsets.all(4.0),
        offset: const Offset(16.0, 48.0),
        clipBehavior: Clip.none,
        elevation: 16.0,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24.0),
          bottomLeft: Radius.circular(24.0),
          bottomRight: Radius.circular(24.0),
        )),
        surfaceTintColor: const Color(0xFFFFFFFF),
        itemBuilder: (context) => [
          PopupMenuItem<String>(
            padding: const EdgeInsets.all(0.0),
            value: 'Language',
            child: SizedBox(
              width: 160.0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ListTile(
                  title: const Text('English'),
                  trailing: (languageLabel == 'Language')
                      ? Container(
                          width: 16.0,
                          height: 16.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.blue.shade900),
                          ),
                          child: Center(
                            child: Container(
                              width: 8.0,
                              height: 8.0,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.blue.shade900),
                            ),
                          ),
                        )
                      : null,
                ),
              ),
            ),
          ),
          const PopupMenuDivider(height: 2.0),
          PopupMenuItem<String>(
            padding: const EdgeInsets.all(0.0),
            value: 'ቋንቋ',
            child: SizedBox(
              width: 160.0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ListTile(
                  title: const Text('አማርኛ'),
                  trailing: (languageLabel == 'ቋንቋ')
                      ? Container(
                          width: 16.0,
                          height: 16.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.blue.shade900),
                          ),
                          child: Center(
                            child: Container(
                              width: 8.0,
                              height: 8.0,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.blue.shade900),
                            ),
                          ),
                        )
                      : null,
                ),
              ),
            ),
          ),
          const PopupMenuDivider(height: 2.0),
          PopupMenuItem<String>(
            padding: const EdgeInsets.all(0.0),
            value: 'Qooqa',
            child: SizedBox(
              width: 160.0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ListTile(
                  title: const Text('Afaan Oromo'),
                  trailing: (languageLabel == 'Qooqa')
                      ? Container(
                          width: 16.0,
                          height: 16.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.blue.shade900),
                          ),
                          child: Center(
                            child: Container(
                              width: 8.0,
                              height: 8.0,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.blue.shade900),
                            ),
                          ),
                        )
                      : null,
                ),
              ),
            ),
          ),
          const PopupMenuDivider(height: 2.0),
          PopupMenuItem<String>(
            padding: const EdgeInsets.all(0.0),
            value: 'Iuuqad',
            child: SizedBox(
              width: 160.0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ListTile(
                  title: const Text('Af-Somali'),
                  trailing: (languageLabel == 'Iuuqad')
                      ? Container(
                          width: 16.0,
                          height: 16.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.blue.shade900),
                          ),
                          child: Center(
                            child: Container(
                              width: 8.0,
                              height: 8.0,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.blue.shade900),
                            ),
                          ),
                        )
                      : null,
                ),
              ),
            ),
          ),
        ],
        onSelected: (value) {
          setState(() {
            languageLabel = value;
          });
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(languageLabel),
            const Icon(Icons.arrow_drop_down),
          ],
        ),
      ),
    );
  }
}
