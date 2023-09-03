import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../styles/text_styles.dart';

class SocialButton extends StatelessWidget {
  final Widget icon;
  final String title;
  const SocialButton({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: 273,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          const Gap(20),
          Text(
            title,
            style: AppTextStyle.body1,
          )
        ],
      ),
    );
  }
}
