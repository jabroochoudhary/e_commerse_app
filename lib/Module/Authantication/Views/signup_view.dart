import '/Module/Authantication/View%20Model/auth_controller.dart';
import '../../../Utills/App Button/app_button.dart';
import '../../../Utills/App Text/app_text.dart';
import '../../../Utills/App Theme/AppColors.dart';
import '../../../Utills/App Theme/app_config.dart';
import '../../../Utills/textfeilds.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpView extends StatelessWidget {
  SignUpView({Key? key}) : super(key: key);
  final _contrller = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          backgroundColor: AppColors.dullBackground,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
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
                        "Sign Up",
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
                AppTextFeild()
                    .simpleFeild(context: context, hinttext: "Name",imageUrl: "assets/logo/person_logo.png",),
                SizedBox(
                  height: AppConfig(context).height * 0.02,
                ),
                AppTextFeild()
                    .simpleFeild(context: context, hinttext: "Email",imageUrl: "assets/logo/email_logo.png"),
                SizedBox(
                  height: AppConfig(context).height * 0.02,
                ),
                AppTextFeild()
                    .simpleFeild(context: context, hinttext: "password",
                    imageUrl: "assets/logo/password_logo.png"),
                SizedBox(
                  height: AppConfig(context).height * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                        value: _contrller.isTermsComdition.value,
                        onChanged: (value) {
                          _contrller.isTermsComdition.value = value!;
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3),
                        )),
                    AppText.text(
                      "I accept all the ",
                      fontsize: 14,
                      fontweight: FontWeight.w400,
                      color: AppColors.dullBlackColor,
                    ),
                    AppText.text(
                      "Terms & Conditions",
                      fontsize: 16,
                      fontweight: FontWeight.w500,
                      color: AppColors.blackColor,
                    )
                  ],
                ),
                SizedBox(
                  height: AppConfig(context).height * 0.01,
                ),
                Appbutton().primaryButton(
                  context: context,
                  title: "Sign up",
                  callback: () {},
                  width: AppConfig(context).width * 0.55,
                  fontsize: 16,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(
                  height: AppConfig(context).height * 0.04,
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
                  height: AppConfig(context).height * 0.02,
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
                Expanded(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      AppText.text(
                        "Already have an account? ",
                        fontsize: 14,
                        color: AppColors.dullBlackColor,
                        fontweight: FontWeight.w400,
                      ),
                      InkWell(
                        onTap: () => Get.back(),
                        child: AppText.text(
                          "Log In",
                          fontsize: 16,
                          color: AppColors.blackColor,
                          fontweight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
        ));
  }
}
