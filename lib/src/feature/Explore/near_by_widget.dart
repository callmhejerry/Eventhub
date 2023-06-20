import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/styles/color_styles.dart';
import '../../../core/styles/text_styles.dart';

class NearByWidget extends StatelessWidget {
  const NearByWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 24, right: 24),
      height: 112,
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 8),
            color: const Color(0xff505588).withOpacity(6 / 100),
            blurRadius: 30,
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              "assets/images/event_3.png",
              height: 92,
              width: 79,
              fit: BoxFit.cover,
            ),
          ),
          const Gap(18),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "1st  May- Sat -2:00 PM",
                  style: AppTextStyle.subTitle2.copyWith(
                    color: AppColorStyle.primaryBlue,
                  ),
                ),
                Text(
                  "Women's leadership conference",
                  maxLines: 2,
                  style: AppTextStyle.title3.copyWith(
                    height: 19.53 / 15,
                  ),
                ),
                const Gap(7),
                Expanded(
                  child: Row(
                    children: [
                      const Icon(
                        Icons.place,
                        color: Color(0xff747688),
                        size: 16,
                      ),
                      Text(
                        "Radius Gallery • Santa Cruz",
                        style: AppTextStyle.subTitle1.copyWith(
                          color: const Color(0xff747688),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const Icon(
            Icons.bookmark,
            color: Color(0xffF0635A),
          )
        ],
      ),
    );
  }
}
