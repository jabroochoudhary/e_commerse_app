import 'package:ecommerce_app_builtin_dev/Utills/App%20Text/app_text.dart';
import 'package:ecommerce_app_builtin_dev/Utills/App%20Theme/AppColors.dart';
import 'package:ecommerce_app_builtin_dev/Utills/App%20Theme/app_config.dart';
import 'package:flutter/material.dart';

class MyCartComponents {
  card({
    required BuildContext context,
    String imageUrl = "assets/logo/tshirt_logo.png",
    String name = "shirt",
    String price = "\$175",
    int qty = 2,
    Color imageBgColor = Colors.grey,
    GestureTapCallback? onIncrementPressed,
    GestureTapCallback? onDecrementPressed,
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
                children: [
                  AppText.text(
                    name,
                    fontsize: 20,
                    color: AppColors.dullBlackColor,
                    fontweight: FontWeight.w500,
                  ),
                  SizedBox(
                    height: AppConfig(context).height * 0.005,
                  ),
                  AppText.text(
                    price,
                    fontsize: 20,
                    color: AppColors.blackColor,
                    fontweight: FontWeight.w500,
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              InkWell(
                onTap: onIncrementPressed,
                child: Container(
                  height: AppConfig(context).width / 15,
                  width: AppConfig(context).width / 15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: AppColors.dullOrange,
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.add,
                      color: AppColors.primaryColor,
                      size: 20,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              AppText.text(qty),
              SizedBox(
                width: 20,
              ),
              InkWell(
                onTap: onDecrementPressed,
                child: Container(
                  height: AppConfig(context).width / 15,
                  width: AppConfig(context).width / 15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: AppColors.dullOrange,
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.remove,
                      color: AppColors.primaryColor,
                      size: 20,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: AppConfig(context).width * 0.02,
              )
            ],
          ),
        ],
      ),
    );
  }
}
