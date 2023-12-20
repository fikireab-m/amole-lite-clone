import 'package:amole_lite/config/path.dart';
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
                          itemBuilder: (context) => languages
                              .map((language) => PopupMenuItem(
                                    value: language['lable'],
                                    child: SizedBox(
                                      width: 180.0,
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(language['name']!),
                                              if (languageLabel ==
                                                  language['lable'])
                                                Container(
                                                  width: 16.0,
                                                  height: 16.0,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    border: Border.all(
                                                        color: Colors
                                                            .blue.shade900),
                                                  ),
                                                  child: Center(
                                                    child: Container(
                                                      width: 8.0,
                                                      height: 8.0,
                                                      decoration: BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                          color: Colors
                                                              .blue.shade900),
                                                    ),
                                                  ),
                                                ),
                                            ],
                                          ),
                                          if (language['name'] !=
                                              languages[languages.length - 1]
                                                  ['name'])
                                            const Divider(),
                                        ],
                                      ),
                                    ),
                                  ))
                              .toList(),
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
          ),
          const FormContainer()
        ],
      ),
    );
  }

  final languages = [
    {
      'name': 'English',
      'lable': 'Language',
    },
    {
      'name': 'አማርኛ',
      'lable': 'ቋንቋ',
    },
    {
      'name': 'Afaan Oromo',
      'lable': 'Qooqa',
    },
    {
      'name': 'Af-Somali',
      'lable': 'Iuuqad',
    }
  ];
}

class FormContainer extends StatelessWidget {
  const FormContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            InputField(
              kType: TextInputType.text,
              lable: 'Username',
              hintText: 'Your username',
            ),
            SizedBox(height: 8.0),
            InputField(
              kType: TextInputType.visiblePassword,
              lable: 'Password',
              isPassword: true,
              hintText: 'Your password',
            )
          ],
        ),
      ),
    );
  }
}
