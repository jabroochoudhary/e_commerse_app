import 'package:ecommerce_app_builtin_dev/Utills/App%20Text/app_text.dart';
import 'package:ecommerce_app_builtin_dev/Utills/App%20Theme/AppColors.dart';
import 'package:ecommerce_app_builtin_dev/Utills/App%20Theme/app_config.dart';
import 'package:flutter/material.dart';

class HomeCardsComponents {
  smallCard({
    required BuildContext context,
    String? imagePath,
    String? title,
    GestureTapCallback? onPressed,
  }) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: AppConfig(context).width * 0.215,
        width: AppConfig(context).width * 0.215,
        padding: EdgeInsets.all(3),
        decoration: BoxDecoration(
          color: AppColors.background,
          border: Border.all(
            color: AppColors.greyColor.withOpacity(0.30),
            width: 0.8,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image(
              fit: BoxFit.cover,
              height: AppConfig(context).width * 0.14,
              width: AppConfig(context).width * 0.14,
              image: AssetImage(
                imagePath!,
              ),
            ),
            AppText.text(
              title,
              fontsize: 14,
              color: AppColors.dullBlackColor,
            )
          ],
        ),
      ),
    );
  }

  mainCard({
    required BuildContext context,
    String? imagePath,
    String? title,
    String? price,
    Color? bgColor,
    GestureTapCallback? onPressed,
    GestureTapCallback? favPressed,
  }) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: AppConfig(context).width * 0.50,
        width: AppConfig(context).width * 0.40,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: AppColors.background,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  height: AppConfig(context).width * 0.40,
                  width: AppConfig(context).width * 0.38,
                  decoration: BoxDecoration(
                    color: bgColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: EdgeInsets.all(15),
                  child: Image(
                    // fit: BoxFit.cover,
                    image: AssetImage(
                      imagePath!,
                    ),
                  ),
                ),
                Positioned(
                  right: 5,
                  top: 5,
                  child: InkWell(
                    onTap: favPressed,
                    child: const CircleAvatar(
                      backgroundColor: AppColors.background,
                      radius: 15,
                      child: Icon(
                        Icons.favorite,
                        size: 20,
                        color: AppColors.redColor,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                AppText.text(
                  title,
                  color: AppColors.dullBlackColor,
                  fontsize: 15,
                ),
                SizedBox(
                  height: 4,
                ),
                AppText.text("\$$price",
                    color: AppColors.blackColor, fontweight: FontWeight.w600),
              ],
            )
          ],
        ),
      ),
    );
  }
}
