import 'package:amole_lite/config/path.dart';
import 'package:amole_lite/constants/const_colors.dart';
import 'package:amole_lite/screens/login/widgets/btn_bar.dart';
import 'package:amole_lite/screens/login/widgets/form.dart';
import 'package:amole_lite/screens/widgets/cliper.dart';
import 'package:amole_lite/screens/widgets/common_btn.dart';
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
      appBar: PreferredSize(
        preferredSize: Size(sc.width, 108.0),
        child: Container(
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: ColorConst.primaryColor,
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
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final double constraint = constraints.maxWidth > 412
              ? 412.0
              : constraints.maxWidth.toDouble();
          return Stack(
            children: [
              ClipPath(
                clipper: Customshape(),
                child: Container(
                  height: sc.height,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        ColorConst.lightBackground,
                        ColorConst.primaryColor.withOpacity(0.2)
                      ],
                    ),
                    image: const DecorationImage(
                      image: AssetImage(Images.bgImg),
                      fit: BoxFit.cover,
                      opacity: 0.1,
                    ),
                  ),
                ),
              ),
              Center(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      color: ColorConst.lightBackground,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                            width: constraint,
                            child: const Padding(
                              padding: EdgeInsets.only(top: 16.0),
                              child: FormContainer(),
                            )),
                        SizedBox(
                          width: constraint,
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 8.0,
                                    bottom: 16.0,
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      GestureDetector(
                                        onTap: () {},
                                        child: const Text(
                                          'forget password?',
                                          style: TextStyle(
                                            fontSize: 18.0,
                                            color: ColorConst.primaryColor,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                ButCommon(
                                  callback: () {},
                                  command: 'Login',
                                  color: ColorConst.primaryColor,
                                  size: 48.0,
                                  fSize: 24.0,
                                  radius: 16.0,
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 16.0),
                        SizedBox(width: constraint, child: const LoginBtnBar()),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget popUpMenu() {
    return Theme(
      data: ThemeData(splashColor: Colors.transparent),
      child: PopupMenuButton<String>(
        padding: const EdgeInsets.all(4.0),
        offset: const Offset(16.0, 24.0),
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
