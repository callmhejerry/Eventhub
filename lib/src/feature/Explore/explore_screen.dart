import 'package:event_hub/core/styles/color_styles.dart';
import 'package:event_hub/core/styles/text_styles.dart';
import 'package:event_hub/src/feature/Explore/near_by_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import 'ads_widget.dart';
import 'event_card.dart';
import 'headline_widget.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [
          Container(
            height: 36,
            width: 36,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(29 / 100),
              shape: BoxShape.circle,
            ),
            alignment: Alignment.center,
            child: const Stack(
              children: [
                Icon(
                  Icons.notifications_none_outlined,
                  color: Colors.white,
                ),
                Positioned(
                  right: 4,
                  top: 4.5,
                  child: Badge(
                    backgroundColor: Colors.cyan,
                  ),
                )
              ],
            ),
          ),
          const Gap(24),
        ],
        leading: IconButton(
          icon: const Icon(
            Icons.menu_rounded,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        backgroundColor: AppColorStyle.primaryBlue,
        title: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Current Location",
                  style: AppTextStyle.subTitle2.copyWith(color: Colors.white),
                ),
                const Icon(
                  Icons.arrow_drop_down,
                  color: Colors.white,
                ),
              ],
            ),
            Text(
              "New Yourk, USA",
              style: AppTextStyle.subTitle1.copyWith(
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Column(
          children: [
            const HomeHeader(),
            const Gap(39),
            const Headline(
              title: "Upcoming Events",
            ),
            const Gap(10),
            SizedBox(
              height: 255,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  EdgeInsets? margin;
                  String image = index.isEven
                      ? "assets/images/event_2.png"
                      : "assets/images/event_4.png";

                  if (index == 0) margin = const EdgeInsets.only(left: 24);
                  if (index == 2) margin = const EdgeInsets.only(right: 24);
                  return EventCard(
                    margin: margin,
                    image: image,
                  );
                },
                separatorBuilder: (context, index) {
                  return const Gap(16);
                },
                itemCount: 3,
              ),
            ),
            const Gap(29),
            const AdsWidget(),
            const Gap(24),
            const Headline(title: "Nearby You"),
            const Gap(10),
            const NearByWidget()
          ],
        ),
      ),
    );
  }
}

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 79,
          alignment: Alignment.topCenter,
          decoration: const BoxDecoration(
            color: AppColorStyle.primaryBlue,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(33),
              bottomRight: Radius.circular(33),
            ),
          ),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            height: 32.14,
            child: Row(
              children: [
                SvgPicture.asset("assets/icons/search_icon.svg"),
                const Gap(5),
                Container(
                  width: 1,
                  height: 20,
                  color: Colors.white.withOpacity(29 / 100),
                ),
                const Gap(5),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 8),
                      border: InputBorder.none,
                      hintText: "Search...",
                      hintStyle: AppTextStyle.body1.copyWith(
                        color: Colors.white.withOpacity(29 / 100),
                      ),
                    ),
                  ),
                ),
                const Gap(10),
                Container(
                  height: 32.14,
                  width: 75,
                  padding: const EdgeInsets.only(
                    top: 4.06,
                    right: 7.36,
                    left: 4.29,
                    bottom: 4.33,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(29 / 100),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset("assets/icons/filter_icon.svg"),
                      const Gap(3.7),
                      const Text(
                        "Filters",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.03,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Positioned.fill(
          top: 55,
          bottom: -20,
          child: SizedBox(
            height: 39.42,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                final caterogies = <Map<String, String>>[
                  {
                    "name": "Sports",
                    "icon": "assets/icons/ball_icon.svg",
                  },
                  {
                    "name": "Music",
                    "icon": "assets/icons/music_icon.svg",
                  },
                  {
                    "name": "Food",
                    "icon": "assets/icons/food_icon.svg",
                  },
                  {
                    "name": "Art",
                    "icon": "assets/icons/ball_icon.svg",
                  },
                ];

                final colors = [
                  const Color(0xffF0635A),
                  const Color(0xffF59762),
                  const Color(0xff29D697),
                  const Color(0xff46CDFB),
                ];
                EdgeInsets? margin;

                if (index == 0) {
                  margin = const EdgeInsets.only(left: 24);
                }
                return CategoryChip(
                  icon: SvgPicture.asset(caterogies[index]["icon"]!),
                  name: caterogies[index]["name"]!,
                  color: colors[index],
                  margin: margin,
                );
              },
              separatorBuilder: (context, index) {
                return const Gap(11.28);
              },
              itemCount: 4,
            ),
          ),
        )
      ],
    );
  }
}

class CategoryChip extends StatelessWidget {
  final String name;
  final Widget icon;
  final EdgeInsets? margin;
  final Color color;
  const CategoryChip({
    super.key,
    required this.icon,
    required this.name,
    required this.color,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      height: 39.60,
      width: 106.77,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.96),
        color: color,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          const Gap(8.31),
          Text(
            name,
            style: AppTextStyle.body2.copyWith(
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
