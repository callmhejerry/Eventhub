import 'package:event_hub/core/styles/color_styles.dart';
import 'package:event_hub/core/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notification"),
        leadingWidth: 57,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
            ),
          )
        ],
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: SafeArea(
        child: ListView.separated(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 24,
          ),
          separatorBuilder: (context, index) {
            return const Gap(16);
          },
          itemBuilder: (BuildContext context, int index) {
            final notification = [
              {
                "name": "David Silbia",
                "notification": "Invite Jo Malone London's Mother's",
                "option": true,
                "image": "assets/images/avatar_2.png",
              },
              {
                "name": "Adnan Safi",
                "notification": "Started following you",
                "option": false,
                "image": "assets/images/avatar_1.png",
              },
              {
                "name": "Joan Baker",
                "notification": "Invite A virtual Evening of Smooth Jazz",
                "option": true,
                "image": "assets/images/avatar_3.png",
              },
              {
                "name": "Ronald C.",
                "notification": "Kinch Like you events",
                "option": false,
                "image": "assets/images/avatar_4.png",
              },
              {
                "name": "Clara Tolson",
                "notification": "Join your Event Gala Music Festival",
                "option": false,
                "image": "assets/images/avatar_5.png",
              },
              {
                "name": "Jennifer Fritz",
                "notification": "Invite you International Kids Safe",
                "option": false,
                "image": "assets/images/avatar_4.png",
              },
            ];
            return NotificationListTile(
              author: notification[index]["name"] as String,
              option: notification[index]["option"] as bool,
              image: notification[index]["image"] as String,
              timeStamp: "Just now",
              notification: notification[index]["notification"] as String,
            );
          },
          itemCount: 5,
        ),
      ),
    );
  }
}

class NotificationListTile extends StatelessWidget {
  final String author;
  final bool option;
  final String image;
  final String timeStamp;
  final String notification;
  const NotificationListTile({
    super.key,
    required this.author,
    required this.notification,
    this.option = false,
    required this.image,
    required this.timeStamp,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 45 / 2,
              backgroundImage: AssetImage(
                image,
              ),
            ),
            const Gap(
              14,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: RichText(
                          maxLines: 2,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: author,
                                style: AppTextStyle.title2.copyWith(
                                  color: AppColorStyle.darkTextColor,
                                ),
                              ),
                              const TextSpan(text: " "),
                              TextSpan(
                                text: notification,
                                style: AppTextStyle.body3.copyWith(
                                  color: AppColorStyle.darkTextColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Gap(
                        14,
                      ),
                      Text(
                        timeStamp,
                        // maxLines: 2,
                        style: AppTextStyle.subTitle2,
                      )
                    ],
                  ),
                  if (option) ...[const Gap(8), const NotificationTileOption()]
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class NotificationTileOption extends StatelessWidget {
  const NotificationTileOption({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            minimumSize: const Size(95, 36),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
            side: const BorderSide(
              color: Color(0xff706D6D),
            ),
          ),
          child: Text(
            "Reject",
            style: AppTextStyle.body3.copyWith(
              color: const Color(0xff706D6D),
              height: 0,
            ),
          ),
        ),
        const Gap(13),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(95, 36),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
          ),
          child: Text(
            "Accept",
            style: AppTextStyle.body3.copyWith(
              height: 0,
            ),
          ),
        )
      ],
    );
  }
}
