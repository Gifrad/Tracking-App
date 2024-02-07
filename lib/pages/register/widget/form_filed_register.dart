import 'package:flutter/material.dart';

import '../../../shared/theme.dart';

class FormFieldRegister extends StatelessWidget {
  final String title;
  final String hintText;
  final TextInputType textInputType;
  final bool obscureText;
  const FormFieldRegister({
    super.key,
    required this.title,
    required this.hintText,
    required this.textInputType,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: blackTextStyle.copyWith(
            fontWeight: semibold,
          ),
        ),
        const SizedBox(
          height: 2,
        ),
        TextFormField(
          obscureText: obscureText,
          style: blueTextStyle.copyWith(
            fontWeight: medium,
            fontSize: 12,
          ),
          keyboardType: textInputType,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: blueTextStyle.copyWith(
              fontWeight: medium,
              fontSize: 12,
            ),
          ),
        ),
      ],
    );
  }
}
