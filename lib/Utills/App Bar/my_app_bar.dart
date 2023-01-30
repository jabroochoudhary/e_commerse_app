import 'package:ecommerce_app_builtin_dev/Utills/App%20Text/app_text.dart';
import 'package:ecommerce_app_builtin_dev/Utills/App%20Theme/AppColors.dart';
import 'package:flutter/material.dart';

class MyAppBar {
  appBar({
    String title = "15/2 New Texas",
    bool isTitleWithIcon = true,
    IconData? prefixIconData,
    GestureTapCallback? prefixIconPressed,
    IconData? postfixIconData,
    GestureTapCallback? postfixIconPressed,
    bool isPrefixIcon = true,
    bool ispostfixIcon = true,
    bool isCentrTitle = true,
    bool isFavouriteScree = false,
    double fontSize = 18,
    FontWeight fontweight = FontWeight.w500,
  }) {
    return AppBar(
      centerTitle: true,
      backgroundColor: AppColors.transparent,
      elevation: 0,
      title: isCentrTitle
          ? isTitleWithIcon
              ? Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.location_on_outlined,
                      size: 22,
                      color: AppColors.dullBlackColor,
                    ),
                    AppText.text(
                      title,
                      fontsize: 20,
                      fontweight: FontWeight.w500,
                      color: AppColors.dullBlackColor,
                      textAlignment: TextAlign.center,
                    )
                  ],
                )
              : AppText.text(
                  title,
                  fontsize: fontSize,
                  fontweight: fontweight,
                  color: AppColors.blackColor,
                  textAlignment: TextAlign.center,
                )
          : SizedBox(),
      automaticallyImplyLeading: true,
      leading: isPrefixIcon
          ? GestureDetector(
              onTap: prefixIconPressed,
              child: Icon(
                prefixIconData,
                size: 25,
                color: AppColors.blackColor,
              ),
            )
          : SizedBox(),
      actions: ispostfixIcon
          ? [
              GestureDetector(
                onTap: postfixIconPressed,
                child: Container(
                  margin: EdgeInsets.only(right: 15, top: 10),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  // height: 10,
                  // width: 40,
                  decoration: !isFavouriteScree
                      ? BoxDecoration(
                          color: AppColors.dullBackground,
                          borderRadius: BorderRadius.circular(6))
                      : const BoxDecoration(
                          color: AppColors.dullBackground,
                          shape: BoxShape.circle,
                        ),
                  child: Icon(
                    postfixIconData,
                    size: 25,
                    color: isFavouriteScree
                        ? AppColors.redColor
                        : AppColors.blackColor,
                  ),
                ),
              )
            ]
          : [],
    );
  }
}
