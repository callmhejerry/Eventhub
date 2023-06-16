import 'package:event_hub/core/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gap/gap.dart';

class ReviewCard extends StatelessWidget {
  final String date;
  final String image;
  final String review;
  final int rating;
  final String name;
  const ReviewCard({
    super.key,
    required this.date,
    required this.image,
    required this.review,
    required this.rating,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 133,
      width: 327,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 34 / 2,
            backgroundImage: AssetImage(
              image,
            ),
          ),
          const Gap(16),
          Expanded(
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: AppTextStyle.title1,
                        ),
                        RatingBar.builder(
                          initialRating: 4,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemSize: 19,
                          itemCount: 4,
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (double value) {},
                        )
                      ],
                    ),
                    Text(
                      date,
                      style: AppTextStyle.body2.copyWith(
                        color: const Color(0xffADAFBB),
                      ),
                    )
                  ],
                ),
                const Gap(7),
                Text(
                  review,
                  style: AppTextStyle.body2.copyWith(
                    height: 25 / 15,
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
