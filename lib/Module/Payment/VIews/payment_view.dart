import 'package:ecommerce_app_builtin_dev/Module/Advance%20Drawer/my_app_advance_drawer.dart';

import '/../Module/Dashboard/dashboard_view.dart';

import '/../Utills/App%20Button/app_button.dart';
import '/../Utills/App%20Text/app_text.dart';
import '/../Utills/App%20Theme/AppColors.dart';
import '/../Utills/App%20Theme/app_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentView extends StatelessWidget {
  const PaymentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: AppConfig(context).height * 0.35,
            width: AppConfig(context).width,
            padding: EdgeInsets.only(
              left: AppConfig(context).width * 0.25,
              right: AppConfig(context).width * 0.25,
            ),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  width: 15,
                  color: AppColors.primaryColor,
                ),
              ),
              child: const Center(
                child: CircleAvatar(
                  radius: 35,
                  backgroundColor: AppColors.dullOrange,
                  child: Center(
                    child: Icon(
                      Icons.check_rounded,
                      size: 50,
                      // weight: 200,
                    ),
                  ),
                ),
              ),
            ),
          ),
          AppText.text(
            "Congratulation!!!",
            fontsize: 30,
            fontweight: FontWeight.w600,
            color: AppColors.blackColor,
          ),
          SizedBox(
            height: 15,
          ),
          AppText.text(
            "Payment is the transfer of money\nservices in exchange product or Payments",
            fontsize: 15,
            fontweight: FontWeight.w400,
            color: AppColors.dullBlackColor,
          ),
          SizedBox(
            height: 25,
          ),
          Appbutton().primaryButton(
            callback: () {},
            context: context,
            title: "Get your receipt",
            width: AppConfig(context).width * 0.65,
            fontsize: 18,
            fontWeight: FontWeight.w500,
          ),
          SizedBox(
            height: 15,
          ),
          Appbutton().primaryButton(
            callback: () => Get.offAll(() => MyAppAdvanceDrawer()),
            context: context,
            backGroundColor: AppColors.dullOrange,
            title: "Back to Home",
            width: AppConfig(context).width * 0.65,
            fontsize: 18,
            fontWeight: FontWeight.w500,
            fontColor: AppColors.primaryColor,
          ),
        ],
      ),
    );
  }
}
