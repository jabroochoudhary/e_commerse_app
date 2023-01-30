import 'package:flutter/material.dart';

import '../../../Utills/App Text/app_text.dart';
import '../../../Utills/App Theme/AppColors.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';

class SettingsComponents {
  simpleTile({
    String imagePath = "assets/logo/email_logo.png",
    String tittle = "Email Support",
    GestureTapCallback? onPressed,
  }) {
    return InkWell(
      onTap: onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            margin: EdgeInsets.only(right: 20),
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.dullOrange,
            ),
            child: Image(
              image: AssetImage(
                imagePath,
              ),
              fit: BoxFit.cover,
            ),
          ),
          AppText.text(
            tittle,
            fontsize: 16,
            fontweight: FontWeight.w500,
            color: AppColors.blackColor,
          ),
          Expanded(child: Container()),
          Icon(
            Icons.arrow_forward_ios,
            size: 20,
          )
        ],
      ),
    );
  }

  buttonTile(
      {String imagePath = "assets/logo/email_logo.png",
      String tittle = "Email Support",
      required ValueNotifier<bool> cont}) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          margin: EdgeInsets.only(right: 20),
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.dullOrange,
          ),
          child: Image(
            image: AssetImage(
              imagePath,
            ),
            fit: BoxFit.cover,
          ),
        ),
        AppText.text(
          tittle,
          fontsize: 16,
          fontweight: FontWeight.w500,
          color: AppColors.blackColor,
        ),
        Expanded(child: Container()),
        AdvancedSwitch(
          width: 50,
          height: 30,
          activeColor: AppColors.primaryColor,
          controller: cont,
          // inactiveColor: AppColors.background,

          borderRadius: BorderRadius.circular(29),
        ),
      ],
    );
  }
}
