import 'package:event_hub/core/styles/color_styles.dart';
import 'package:event_hub/core/styles/text_styles.dart';
import 'package:event_hub/core/widgets/event_card.dart';
import 'package:event_hub/core/widgets/review_card.dart';
import 'package:event_hub/src/feature/Profile/widgets/profile_display_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:readmore/readmore.dart';

class OrganizerProfile extends StatefulWidget {
  const OrganizerProfile({super.key});

  @override
  State<OrganizerProfile> createState() => _OrganizerProfileState();
}

class _OrganizerProfileState extends State<OrganizerProfile>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

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
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Gap(29),
            const ProfileDisplayDetails(
              displayName: "Ashfak Sayem",
              followers: "350",
              following: "264",
            ),
            const Gap(21),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  label: const Text("Follow"),
                  icon: SvgPicture.asset("assets/icons/follow_icon.svg"),
                ),
                const Gap(17),
                OutlinedButton.icon(
                  onPressed: () {},
                  icon: SvgPicture.asset("assets/icons/chat_icon.svg"),
                  label: const Text(
                    "Messages",
                    style: TextStyle(color: AppColorStyle.primaryBlue),
                  ),
                )
              ],
            ),
            const Gap(30),
            TabBar(
              indicatorColor: AppColorStyle.primaryBlue,
              controller: _tabController,
              tabs: const [
                Tab(
                  text: "ABOUT",
                ),
                Tab(
                  text: "EVENT",
                ),
                Tab(
                  text: "REVIEWS",
                )
              ],
            ),
            const Gap(20),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 26),
                child: TabBarView(
                  controller: _tabController,
                  children: const [
                    AboutSection(),
                    EventSection(),
                    ReviewSection(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const ReadMoreText(
      "Enjoy your favorite dishe and a lovely your friends and family and have a great time. Food from local food trucks will be available for purchase",
      style: AppTextStyle.body1,
    );
  }
}

class EventSection extends StatelessWidget {
  const EventSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return const Gap(16);
      },
      itemCount: 3,
      itemBuilder: (context, index) {
        final images = [
          "assets/images/event_1.png",
          "assets/images/event_2.png",
          "assets/images/event_3.png",
        ];
        final texts = [
          "A virtual evening of smoooth jazz",
          "Jo malone london’s mother’s day ",
          "Women's leadership conference"
        ];
        return EventCard(
          image: images[index],
          title: texts[index],
        );
      },
    );
  }
}

class ReviewSection extends StatelessWidget {
  const ReviewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        final names = [
          "Rocks Velkeinjen",
          "Chinedu Jeremiah",
          "Robert Maculry"
        ];
        return ReviewCard(
          name: names[index],
          date: "10 Feb",
          image: "assets/images/avatar_1.png",
          rating: 4,
          review:
              "Cinemas is the ultimate experience to see new movies in Gold Class or Vmax. Find a cinema near you.",
        );
      },
      separatorBuilder: (context, index) {
        return const Gap(15);
      },
      itemCount: 3,
    );
  }
}
