import 'package:event_hub/core/styles/color_styles.dart';
import 'package:event_hub/core/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:readmore/readmore.dart';

import 'widgets/profile_display_details.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});
  final chips = [
    "Games Online",
    "Concert",
    "Music",
    "Art",
    "Movie",
    "Others",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 29,
              ),
              const ProfileDisplayDetails(
                displayName: "Ashfak Sayem",
                followers: "350",
                following: "264",
              ),
              const SizedBox(
                height: 21,
              ),
              Align(
                child: OutlinedButton.icon(
                  onPressed: () {},
                  icon: SvgPicture.asset("assets/icons/edit_icon_svg.svg"),
                  label: Text(
                    "Edit Profile",
                    style: AppTextStyle.body1.copyWith(
                      color: AppColorStyle.primaryBlue,
                    ),
                  ),
                ),
              ),
              const Gap(25),
              Text(
                "About Me",
                style: AppTextStyle.title1.copyWith(
                  height: 34 / 18,
                  color: AppColorStyle.darkTextColor,
                ),
              ),
              const SizedBox(height: 10),
              ReadMoreText(
                "Enjoy your favorite dishe and a lovely your friends and family and have a great time. Food from local food trucks will be available for purchase.and have a great time. Food from local food",
                trimCollapsedText: "Read More",
                trimLines: 3,
                colorClickableText: AppColorStyle.primaryBlue,
                trimMode: TrimMode.Line,
                style: AppTextStyle.body1.copyWith(
                  color: AppColorStyle.darkTextColor,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Interest",
                    style: AppTextStyle.title1.copyWith(
                      height: 34 / 18,
                      color: AppColorStyle.darkTextColor,
                    ),
                  ),
                  Container(
                    height: 28,
                    width: 90,
                    padding: const EdgeInsets.symmetric(
                      vertical: 9,
                      horizontal: 14,
                    ),
                    decoration: BoxDecoration(
                      color: AppColorStyle.primaryBlue.withOpacity(.10),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.edit,
                          size: 10,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "CHANGE",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 9,
              ),
              Wrap(
                spacing: 7,
                children: List.generate(
                  chips.length,
                  (index) {
                    final colors = [
                      const Color(0xff6B7AED),
                      const Color(0xffEE544A),
                      const Color(0xffFF8D5D),
                      const Color(0xff7D67EE),
                      const Color(0xff29D697),
                      const Color(0xff39D1F2),
                    ];
                    return Chip(
                      label: Text(
                        chips[index],
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      backgroundColor: colors[index],
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
