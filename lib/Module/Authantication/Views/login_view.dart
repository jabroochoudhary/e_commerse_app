import '/Module/Advance%20Drawer/my_app_advance_drawer.dart';

import '/Module/Authantication/Views/signup_view.dart';
import '/Utills/App%20Button/app_button.dart';
import '/Utills/App%20Text/app_text.dart';
import '/Utills/App%20Theme/AppColors.dart';
import '/Utills/App%20Theme/app_config.dart';
import '/Utills/textfeilds.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.dullBackground,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: AppConfig(context).height * 0.27,
              width: AppConfig(context).width,
              // color: Colors.red,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: AppConfig(context).height * 0.09,
                  ),
                  const Image(
                    height: 70,
                    image: AssetImage("assets/logo/app_logo.png"),
                  ),
                  SizedBox(
                    height: AppConfig(context).height * 0.04,
                  ),
                  AppText.text(
                    "Log in",
                    color: AppColors.blackColor,
                    fontsize: 22,
                    fontweight: FontWeight.w600,
                  )
                ],
              ),
            ),
            SizedBox(
              height: AppConfig(context).height * 0.02,
            ),
            AppTextFeild().simpleFeild(
                context: context,
                hinttext: "Email",
                imageUrl: "assets/logo/email_logo.png"),
            SizedBox(
              height: AppConfig(context).height * 0.02,
            ),
            AppTextFeild().simpleFeild(
                context: context,
                hinttext: "Password",
                imageUrl: "assets/logo/password_logo.png"),
            SizedBox(
              height: AppConfig(context).height * 0.015,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                AppText.text(
                  "Forgot password?",
                  fontsize: 14,
                  fontweight: FontWeight.w400,
                  color: AppColors.dullBlackColor,
                )
              ],
            ),
            SizedBox(
              height: AppConfig(context).height * 0.025,
            ),
            Appbutton().primaryButton(
              context: context,
              title: "Log in",
              callback: () => Get.offAll(() => MyAppAdvanceDrawer()),
              // callback: () {},

              width: AppConfig(context).width * 0.55,
              fontsize: 16,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(
              height: AppConfig(context).height * 0.05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 0.5,
                  width: AppConfig(context).width * 0.25,
                  decoration: BoxDecoration(
                    color: AppColors.dullBlackColor,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: AppText.text(
                    "Or",
                    fontsize: 14,
                    fontweight: FontWeight.w400,
                    color: AppColors.dullBlackColor,
                  ),
                ),
                Container(
                  height: 0.5,
                  width: AppConfig(context).width * 0.25,
                  decoration: BoxDecoration(
                    color: AppColors.dullBlackColor,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: AppConfig(context).height * 0.05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Appbutton.socialRoundButton(
                  context: context,
                  onPressed: () {},
                  iconPath: "assets/logo/facebook.png",
                ),
                Appbutton.socialRoundButton(
                  context: context,
                  onPressed: () {},
                  iconPath: "assets/logo/google.png",
                ),
              ],
            ),
            SizedBox(height: AppConfig(context).height / 18),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                AppText.text(
                  "Dont't have an account? ",
                  fontsize: 14,
                  color: AppColors.dullBlackColor,
                  fontweight: FontWeight.w400,
                ),
                InkWell(
                  onTap: () => Get.to(() => SignUpView()),
                  child: AppText.text(
                    "Sign Up",
                    fontsize: 16,
                    color: AppColors.blackColor,
                    fontweight: FontWeight.w600,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
