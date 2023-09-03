import 'package:flutter/material.dart';

import '../styles/text_styles.dart';

class AppTextField extends StatelessWidget {
  final Widget? prefixIcon;
  final String? hintText;

  const AppTextField({
    super.key,
    this.prefixIcon,
    this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: InputBorder.none,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 17,
        ),
        hintText: hintText,
        hintStyle: AppTextStyle.body3.copyWith(
          color: const Color(0xff747688),
        ),
        prefixIcon: prefixIcon,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color(0xffE4DFDF),
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
