import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.grey,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.grey,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.grey,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
