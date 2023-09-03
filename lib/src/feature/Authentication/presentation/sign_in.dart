import 'package:event_hub/core/styles/color_styles.dart';
import 'package:event_hub/core/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import '../../../../core/widgets/social_button.dart';
import '../../../../core/widgets/text_field.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff9f9f9),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 29),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(MediaQuery.of(context).padding.top + 40),
            Align(
              child: SvgPicture.asset(
                "assets/icons/EventHub_Logo.svg",
              ),
            ),
            const Gap(7),
            Align(
              child: Text(
                "Event Hub",
                style: AppTextStyle.h2.copyWith(
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff37364A),
                ),
              ),
            ),
            const Gap(30),
            const Text(
              "Sign in",
              style: AppTextStyle.h4,
            ),
            const Gap(21),
            AppTextField(
              prefixIcon: SvgPicture.asset(
                "assets/icons/mail.svg",
                fit: BoxFit.scaleDown,
              ),
              hintText: "abc@email.com",
            ),
            const Gap(19),
            AppTextField(
              hintText: "Your password",
              prefixIcon: SvgPicture.asset(
                "assets/icons/password.svg",
                fit: BoxFit.scaleDown,
              ),
            ),
            const Gap(20),
            Row(
              children: [
                SizedBox(
                  height: 19,
                  child: Switch.adaptive(
                    activeColor: AppColorStyle.primaryBlue,
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    value: true,
                    onChanged: (value) {},
                  ),
                ),
                const Gap(8),
                Text(
                  "Remember Me",
                  style: AppTextStyle.body3.copyWith(
                    color: AppColorStyle.darkTextColor,
                  ),
                ),
                const Spacer(),
                Text(
                  "Forgot Password",
                  style: AppTextStyle.body3.copyWith(
                    color: AppColorStyle.darkTextColor,
                  ),
                ),
              ],
            ),
            const Gap(36),
            Align(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(271, 63),
                  backgroundColor: const Color(0xff5669FF),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Spacer(),
                    Text(
                      "SIGN IN",
                      style: AppTextStyle.body1.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    const Gap(62),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xff3D56F0),
                      ),
                      child: const Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                        size: 16,
                      ),
                    ),
                    const Gap(14)
                  ],
                ),
              ),
            ),
            const Gap(24),
            Align(
              child: Text(
                "OR",
                style: AppTextStyle.body1.copyWith(
                  color: const Color(0xff9D9898),
                  height: 34 / 16,
                ),
              ),
            ),
            const Gap(5),
            Align(
              child: SocialButton(
                icon: SvgPicture.asset(
                  "assets/icons/google.svg",
                  fit: BoxFit.scaleDown,
                ),
                title: "Login with Google",
              ),
            ),
            const Gap(17),
            Align(
              child: SocialButton(
                icon: SvgPicture.asset(
                  "assets/icons/facebook.svg",
                  fit: BoxFit.scaleDown,
                ),
                title: "Login with Facebook",
              ),
            ),
            const Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Dont have an account? ",
                  style: AppTextStyle.body2,
                ),
                Text(
                  "Sign up",
                  style: AppTextStyle.body2.copyWith(
                    color: AppColorStyle.primaryBlue,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
