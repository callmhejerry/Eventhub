import 'package:event_hub/core/styles/color_styles.dart';
import 'package:event_hub/core/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

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
              const Align(
                child: CircleAvatar(
                  backgroundImage:
                      AssetImage("assets/images/profile_avatar.png"),
                  radius: 96 / 2,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Align(
                child: Text(
                  "Ashfak Sayem",
                  style: AppTextStyle.h4.copyWith(
                    color: AppColorStyle.darkTextColor,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const FollowersAndFollowing(
                followers: "350",
                following: "264",
              ),
              const SizedBox(
                height: 21,
              ),
              Align(
                child: OutlinedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.edit),
                  label: Text(
                    "Edit Profile",
                    style: AppTextStyle.body1.copyWith(
                      color: AppColorStyle.primaryBlue,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
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
                    child: Row(
                      children: const [
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

class FollowersAndFollowing extends StatelessWidget {
  final String followers;
  final String following;
  const FollowersAndFollowing({
    super.key,
    required this.followers,
    required this.following,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Text(
              following,
              style: AppTextStyle.title2,
            ),
            const Text(
              "Following",
              style: AppTextStyle.body3,
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 25),
          height: 32,
          width: 1,
          color: const Color(0xffdddddd),
        ),
        Column(
          children: [
            Text(
              followers,
              style: AppTextStyle.title2,
            ),
            const Text(
              "Followers",
              style: AppTextStyle.body3,
            ),
          ],
        )
      ],
    );
  }
}
