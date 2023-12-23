import 'package:amole_lite/widgets/input_field.dart';
import 'package:flutter/material.dart';

class FormContainer extends StatelessWidget {
  const FormContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),
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
            SizedBox(height: 16.0),
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
