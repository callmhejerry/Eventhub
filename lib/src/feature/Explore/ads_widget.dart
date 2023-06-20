import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/styles/color_styles.dart';
import '../../../core/styles/text_styles.dart';

class AdsWidget extends StatelessWidget {
  const AdsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Container(
          color: const Color.fromARGB(255, 154, 253, 253),
          height: 127,
          width: double.infinity,
          child: Stack(
            children: [
              Positioned(
                right: -20,
                top: -7,
                child: Image.asset("assets/images/ads.png"),
              ),
              Positioned(
                top: 10,
                left: 18,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Invite your friends",
                      style: AppTextStyle.title1.copyWith(
                        height: 34 / 18,
                        color: AppColorStyle.darkTextColor,
                      ),
                    ),
                    Text(
                      "Get \$20 for ticket",
                      style: AppTextStyle.subTitle1.copyWith(
                        color: const Color(0xff484D70),
                      ),
                    ),
                    const Gap(13),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(72, 32),
                        backgroundColor: const Color(0xff00F8FF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: const Text(
                        "INVITE",
                        style: AppTextStyle.subTitle2,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
