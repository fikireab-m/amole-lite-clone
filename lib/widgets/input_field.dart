import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  final TextInputType kType;
  final String lable;
  final bool isPassword;
  const InputField({
    super.key,
    required this.lable,
    this.kType = TextInputType.phone,
    this.isPassword = false,
  });

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  late bool isPassword;
  late String lableText;
  late TextInputType keyboardType;
  @override
  void initState() {
    keyboardType = widget.kType;
    lableText = widget.lable;
    isPassword = widget.isPassword;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return isPassword
        ? TextFormField(
            obscureText: true,
            keyboardType: keyboardType,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              labelText: lableText,
            ),
          )
        : TextFormField(
            keyboardType: keyboardType,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              labelText: lableText,
            ),
          );
  }
}
