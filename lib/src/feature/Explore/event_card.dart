import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/styles/color_styles.dart';
import '../../../core/styles/text_styles.dart';

class EventCard extends StatelessWidget {
  final EdgeInsets? margin;
  final String image;

  const EventCard({
    super.key,
    this.margin,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      height: 255,
      width: 237,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 8),
            blurRadius: 30,
            color: const Color(0xff505588).withOpacity(6 / 100),
          ),
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 9, left: 9, right: 9),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    image,
                    height: 131,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 8,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white.withOpacity(70 / 100),
                        ),
                        child: const Column(
                          children: [
                            Text(
                              "10",
                              style: TextStyle(
                                color: Color(0xffF0635A),
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "JUNE",
                              style: TextStyle(
                                color: Color(0xffF0635A),
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Colors.white.withOpacity(70 / 100),
                        ),
                        child: const Icon(
                          Icons.bookmark_rounded,
                          color: Color(0xffF0635A),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const Gap(10),
          Padding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
              bottom: 17,
            ),
            child: Column(
              children: [
                const Text(
                  "Internatonal Band Music Conference",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyle.title1,
                ),
                const Gap(10),
                Row(
                  children: [
                    const Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                          left: 16 * 2,
                          child: CustomAvatar(
                            image: "assets/images/avatar_1.png",
                          ),
                        ),
                        Positioned(
                          left: 16,
                          child: CustomAvatar(
                            image: "assets/images/avatar_2.png",
                          ),
                        ),
                        Positioned(
                          child: CustomAvatar(
                            image: "assets/images/avatar_3.png",
                          ),
                        ),
                      ],
                    ),
                    const Gap(16 * 2),
                    const Gap(10),
                    Text(
                      "+20 Going",
                      style: AppTextStyle.subTitle2.copyWith(
                        color: const Color(0xff3F38DD),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const Gap(10),
                Row(
                  children: [
                    const Icon(
                      Icons.place_rounded,
                      size: 16,
                      color: AppColorStyle.greyTextColor,
                    ),
                    const Gap(5),
                    Text(
                      "36 Guild Street London, UK",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyle.subTitle1.copyWith(
                        color: AppColorStyle.greyTextColor,
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CustomAvatar extends StatelessWidget {
  final String image;
  const CustomAvatar({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
          width: 1,
        ),
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(
            image,
          ),
        ),
      ),
    );
  }
}
