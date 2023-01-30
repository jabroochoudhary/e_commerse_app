import 'package:ecommerce_app_builtin_dev/Utills/App%20Text/app_text.dart';
import 'package:ecommerce_app_builtin_dev/Utills/App%20Theme/AppColors.dart';
import 'package:flutter/material.dart';

class DrawerTile {
  tile(
      {required BuildContext context,
      IconData icon = Icons.email,
      String title = "Name",
      GestureTapCallback? onPressed}) {
    return InkWell(
      onTap: onPressed,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: AppColors.dullOrange,
              ),
              child: Icon(
                icon,
                color: AppColors.primaryColor,
                size: 20,
              )),
          SizedBox(
            width: 20,
          ),
          AppText.text(
            title,
            color: AppColors.dullBlackColor,
            fontsize: 18,
            fontweight: FontWeight.w400,
          ),
        ],
      ),
    );
  }
}
