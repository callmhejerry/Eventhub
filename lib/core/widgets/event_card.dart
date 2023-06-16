import 'package:event_hub/core/styles/color_styles.dart';
import 'package:event_hub/core/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class EventCard extends StatelessWidget {
  final String title;
  final String image;
  const EventCard({
    super.key,
    required this.image,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 112,
      width: 327,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 8),
            blurRadius: 25,
            blurStyle: BlurStyle.normal,
            color: const Color(0xff535990).withOpacity(0.07),
          )
        ],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              image,
              height: 92,
              width: 79,
              fit: BoxFit.cover,
            ),
          ),
          const Gap(18),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "1st  May- Sat -2:00 PM",
                  style: AppTextStyle.subTitle2.copyWith(
                    color: AppColorStyle.primaryBlue,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Gap(3),
                Text(
                  title,
                  style: AppTextStyle.title1.copyWith(
                    height: 25 / 18,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
