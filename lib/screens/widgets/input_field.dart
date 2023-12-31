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
  bool isPassVisible = false;
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
    return SizedBox(
      height: 56.0,
      child: TextFormField(
        obscureText: isPassword && !isPassVisible,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          labelText: lableText,
          hintText: hint,
          prefixIcon: isPassword
              ? const Icon(
                  Icons.lock_outline_rounded,
                  color: Color(0xFF004aad),
                )
              : const Icon(
                  Icons.person_outline_rounded,
                  color: Color(0xFF004aad),
                ),
          suffixIcon: isPassword
              ? GestureDetector(
                  onTap: () {
                    setState(() {
                      isPassVisible = !isPassVisible;
                    });
                  },
                  child: isPassVisible
                      ? const Icon(
                          Icons.visibility_off_outlined,
                          color: Color(0xFF004aad),
                        )
                      : const Icon(
                          Icons.visibility_outlined,
                          color: Color(0xFF004aad),
                        ),
                )
              : null,
        ),
      ),
    );
  }
}
