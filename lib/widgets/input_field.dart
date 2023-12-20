import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  final TextInputType kType;
  final String lable;
  final bool isPassword;
  final String hintText;
  const InputField({
    super.key,
    required this.lable,
    this.kType = TextInputType.phone,
    this.isPassword = false,
    required this.hintText,
  });

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  late bool isPassword;
  late String lableText;
  late String hint;
  late TextInputType keyboardType;
  @override
  void initState() {
    keyboardType = widget.kType;
    lableText = widget.lable;
    isPassword = widget.isPassword;
    hint = widget.hintText;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isPassword,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        labelText: lableText,
        hintText: hint,
        prefixIcon: isPassword
            ? const Icon(
                Icons.lock_outline_rounded,
                color: Color(0xFF003CFF),
              )
            : const Icon(
                Icons.person_outline_rounded,
                color: Color(0xFF003CFF),
              ),
      ),
    );
  }
}
