import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../Utills/App Text/app_text.dart';
import '../../../Utills/App Theme/AppColors.dart';
import '../../../Utills/App Theme/app_config.dart';

class MyWalletComponents {
  card({
    required BuildContext context,
    String imageUrl = "assets/logo/tshirt_logo.png",
    String name = "Shirt",
    String price = "\$175",
    DateTime? date,
    Color imageBgColor = Colors.grey,
    GestureTapCallback? onTap,
  }) {
    return Container(
      width: AppConfig(context).width,
      height: AppConfig(context).height * 0.12,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppColors.background,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: AppConfig(context).height * 0.10,
                width: AppConfig(context).height * 0.10,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: imageBgColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                // mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText.text(
                    name,
                    fontsize: 20,
                    color: AppColors.blackColor,
                    fontweight: FontWeight.w500,
                  ),
                  SizedBox(
                    height: AppConfig(context).height * 0.01,
                  ),
                  AppText.text(
                    DateFormat('yyyy-MM-dd').format(date!).toString(),
                    fontsize: 15,
                    fontweight: FontWeight.w400,
                    color: AppColors.greyColor,
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              AppText.text(
                price,
                fontsize: 18,
                color: Colors.red,
                fontweight: FontWeight.bold,
              ),
              SizedBox(
                width: 30,
              )
            ],
          ),
        ],
      ),
    );
  }
}
