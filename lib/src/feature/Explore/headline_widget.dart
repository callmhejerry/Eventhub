import 'package:flutter/material.dart';

import '../../../core/styles/color_styles.dart';
import '../../../core/styles/text_styles.dart';

class Headline extends StatelessWidget {
  final String title;
  const Headline({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SizedBox(
        height: 34,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: AppTextStyle.title1,
            ),
            InkWell(
              child: Text(
                "See All",
                style: AppTextStyle.body3.copyWith(
                  color: AppColorStyle.greyTextColor,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
