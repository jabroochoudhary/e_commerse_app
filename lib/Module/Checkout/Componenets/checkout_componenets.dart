import 'package:flutter/material.dart';

import '../../../Utills/App Text/app_text.dart';
import '../../../Utills/App Theme/AppColors.dart';
import '../../../Utills/App Theme/app_config.dart';

class CheckoutComponenst {
  addressCard({
    required BuildContext context,
    bool isChecked = false,
  }) {
    return Container(
      width: AppConfig(context).width,
      height: AppConfig(context).height * 0.13,
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: isChecked
                        ? AppColors.primaryColor
                        : AppColors.background,
                    border: Border.all(
                      color: AppColors.dullBlackColor,
                      width: 0.4,
                    )),
                child: const Icon(
                  Icons.check,
                  color: AppColors.background,
                  size: 20,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText.text(
                    "Home",
                    fontsize: 17,
                    fontweight: FontWeight.w500,
                    color: AppColors.blackColor,
                  ),
                  AppText.text(
                    "03155460048",
                    fontsize: 17,
                    fontweight: FontWeight.w400,
                    color: AppColors.dullBlackColor,
                  ),
                  AppText.text(
                    "220 New Yourk",
                    fontsize: 17,
                    fontweight: FontWeight.w400,
                    color: AppColors.dullBlackColor,
                  ),
                ],
              ),
            ],
          ),
          Icon(
            Icons.edit,
            size: 25,
            color: AppColors.dullBlackColor,
          )
        ],
      ),
    );
  }

  paymentMethodCard(
      {required BuildContext context,
      String imageUrl = "assets/logo/apple_Pay_logo.jpg",
      GestureTapCallback? onPressed}) {
    return Container(
      height: 50,
      width: 80,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppColors.background,
      ),
      child: Image.asset(
        imageUrl,
        fit: BoxFit.contain,
      ),
    );
  }
}
