import 'package:flutter/material.dart';

import '../../../../core/styles/color_styles.dart';
import '../../../../core/styles/text_styles.dart';

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

class ProfileDisplayDetails extends StatelessWidget {
  final String displayName;
  final String followers;
  final String following;
  const ProfileDisplayDetails({
    super.key,
    required this.displayName,
    required this.followers,
    required this.following,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CircleAvatar(
          backgroundImage: AssetImage("assets/images/profile_avatar.png"),
          radius: 96 / 2,
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          displayName,
          style: AppTextStyle.h4.copyWith(
            color: AppColorStyle.darkTextColor,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        FollowersAndFollowing(
          followers: followers,
          following: following,
        )
      ],
    );
  }
}
