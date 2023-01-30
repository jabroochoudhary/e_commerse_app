import 'package:flutter/material.dart';

import '../../../Utills/App Text/app_text.dart';
import '../../../Utills/App Theme/AppColors.dart';

class MyProfileComponenets {
  card({
    required BuildContext context,
    IconData icon = Icons.shopping_bag,
    String name = "progress Order",
    String value = "10+",
    Color mainColor = AppColors.primaryColor,
  }) {
    return Expanded(
      child: Container(
        height: 120,
        // width: 200,
        padding: EdgeInsets.all(5),
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.background,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 2,
            ),
            CircleAvatar(
              radius: 20,
              backgroundColor: mainColor.withOpacity(0.10),
              child: Icon(
                icon,
                size: 25,
                color: mainColor,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            AppText.text(
              name,
              color: AppColors.greyColor,
              fontsize: 14,
              fontweight: FontWeight.w500,
            ),
            AppText.text(
              value,
              color: AppColors.blackColor,
              fontsize: 18,
              fontweight: FontWeight.w500,
            ),
          ],
        ),
      ),
    );
  }

  tile({
    required BuildContext context,
    String title = "Name:",
    String value = "Jabran Haider",
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AppText.text(title,
        fontsize: 15,
        color: AppColors.greyColor,
        fontweight: FontWeight.w400,),
         AppText.text(
          value,
          fontsize: 15,
          color: AppColors.blackColor,
          fontweight: FontWeight.bold,
        ),
      ],
    );
  }
}
