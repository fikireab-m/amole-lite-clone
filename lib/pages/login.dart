import 'package:amole_lite/config/path.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String languageLabel = 'English';
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
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Row(
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
                        width: 180,
                        height: 120,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 0.0, 16.0, 8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(languageLabel),
                      Theme(
                        data: ThemeData(
                          splashColor: Colors.transparent,
                        ),
                        child: PopupMenuButton<String>(
                          padding: const EdgeInsets.all(4.0),
                          icon: const Icon(Icons.arrow_drop_down),
                          offset: const Offset(-16.0, 48.0),
                          clipBehavior: Clip.none,
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(24.0),
                            bottomLeft: Radius.circular(24.0),
                            bottomRight: Radius.circular(24.0),
                          )),
                          surfaceTintColor: const Color(0xFFFFFFFF),
                          itemBuilder: (context) => [
                            PopupMenuItem(
                              value: 'English',
                              child: ListTile(
                                title: const Expanded(child: Text('English')),
                                trailing: Container(
                                  width: 24.0,
                                  height: 24.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border:
                                        Border.all(color: Colors.blue.shade900),
                                  ),
                                  child: Center(
                                    child: Container(
                                      width: 16.0,
                                      height: 16.0,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.blue.shade900),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            PopupMenuItem(
                              value: 'ቋንቋ',
                              child: ListTile(
                                title: const Expanded(child: Text('አማርኛ')),
                                trailing: Container(
                                  width: 24.0,
                                  height: 24.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border:
                                        Border.all(color: Colors.blue.shade900),
                                  ),
                                  child: Center(
                                    child: Container(
                                      width: 16.0,
                                      height: 16.0,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.blue.shade900),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            PopupMenuItem(
                              value: 'Qooqa',
                              child: ListTile(
                                title:
                                    const Expanded(child: Text('Afaan Oromo')),
                                trailing: Container(
                                  width: 24.0,
                                  height: 24.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border:
                                        Border.all(color: Colors.blue.shade900),
                                  ),
                                  child: Center(
                                    child: Container(
                                      width: 16.0,
                                      height: 16.0,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.blue.shade900),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            PopupMenuItem(
                              value: 'Iuuqad',
                              child: ListTile(
                                title: const Expanded(child: Text('Af-Somali')),
                                trailing: Container(
                                  width: 24.0,
                                  height: 24.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border:
                                        Border.all(color: Colors.blue.shade900),
                                  ),
                                  child: Center(
                                    child: Container(
                                      width: 16.0,
                                      height: 16.0,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.blue.shade900),
                                    ),
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
                        ),
                      )
                    ],
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
