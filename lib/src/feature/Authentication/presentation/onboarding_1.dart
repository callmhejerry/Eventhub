import 'package:event_hub/core/styles/color_styles.dart';
import 'package:event_hub/core/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  List<Map<String, String>> onBoardingDetials = [
    {
      "image": "assets/images/onboard1.png",
      "title": "Explore Upcoming and\n Nearby Events",
      "content":
          "In publishing and graphic design, Lorem is a placeholder text commonly",
    },
    {
      "image": "assets/images/onboard2.png",
      "title": "Web Have Modern Events\n Calendar Feature",
      "content":
          "In publishing and graphic design, Lorem is a placeholder text commonly",
    },
    {
      "image": "assets/images/onboard3.png",
      "title": "  To Look Up More Events or\n Activities Nearby By Map",
      "content":
          "In publishing and graphic design, Lorem is a placeholder text commonly",
    }
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SizedBox.expand(
            child: Column(
              children: [
                const Gap(19 + 44),
                Image.asset(
                  onBoardingDetials[currentIndex]["image"]!,
                  width: double.infinity,
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.topCenter,
                ),
              ],
            ),
          ),
          Positioned(
            child: Container(
              height: 288,
              width: double.infinity,
              padding: const EdgeInsets.all(40),
              decoration: const BoxDecoration(
                color: AppColorStyle.primaryBlue,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(48),
                  topRight: Radius.circular(48),
                ),
              ),
              child: Column(
                children: [
                  Text(
                    onBoardingDetials[currentIndex]["title"]!,
                    textAlign: TextAlign.center,
                    style: AppTextStyle.h5.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  const Gap(16),
                  Text(
                    onBoardingDetials[currentIndex]["content"]!,
                    textAlign: TextAlign.center,
                    style: AppTextStyle.body2.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  const Gap(43),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Text(
                          "Skip",
                          style: AppTextStyle.title1.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Row(
                        children: List.generate(
                          onBoardingDetials.length,
                          (index) => Container(
                            height: 8,
                            width: 8,
                            margin: const EdgeInsets.only(left: 8),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: currentIndex == index
                                  ? Colors.white
                                  : Colors.white.withOpacity(20 / 100),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          if (currentIndex < onBoardingDetials.length) {
                            setState(() {
                              currentIndex = currentIndex + 1;
                            });
                          }
                        },
                        child: Text(
                          "Next",
                          style: AppTextStyle.title1.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
