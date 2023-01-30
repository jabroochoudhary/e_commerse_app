import 'package:flutter/material.dart';

import '../../../Utills/App Text/app_text.dart';
import '../../../Utills/App Theme/AppColors.dart';
import '../../../Utills/App Theme/app_config.dart';

class OnbordComponents {
  onBordOne(
    BuildContext context, {
    required GestureTapCallback onNext,
    required GestureTapCallback onSkip,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 35),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  AppText.text("1", color: AppColors.blackColor, fontsize: 18),
                  AppText.text("/", color: AppColors.greyColor, fontsize: 18),
                  AppText.text("3", color: AppColors.greyColor, fontsize: 18),
                ],
              ),
              InkWell(
                onTap: onSkip,
                child: AppText.text("Skip",
                    color: AppColors.blackColor, fontsize: 20),
              ),
            ],
          ),
          SizedBox(
            height: AppConfig(context).height * 0.05,
          ),
          Container(
            height: AppConfig(context).height / 2,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/onbord_one.jpg"),
                fit: BoxFit.cover,
              ),
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: AppConfig(context).height * 0.05,
          ),
          AppText.text("Choose Product",
              color: AppColors.blackColor,
              fontsize: 22,
              textAlignment: TextAlign.center),
          SizedBox(
            height: AppConfig(context).height * 0.01,
          ),
          AppText.text(
              "A product is item offerd for a sale.\nA product can be a service or an item. It can be physical or in vitrual or cyber form",
              color: AppColors.greyColor,
              fontsize: 14,
              maxlines: 3,
              textAlignment: TextAlign.center),
          SizedBox(
            height: AppConfig(context).height * 0.05,
          ),
          Material(
            borderRadius: BorderRadius.circular(30),
            color: AppColors.primaryColor,
            child: InkWell(
              borderRadius: BorderRadius.circular(30),
              onTap: onNext,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                ),
                height: 60,
                width: AppConfig(context).width / 1.9,
                child: Center(
                    child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    AppText.text(
                      "Next",
                      color: AppColors.background,
                      fontsize: 18,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                      color: AppColors.background,
                    )
                  ],
                )),
              ),
            ),
          )
        ],
      ),
    );
  }

  onBordTwo(
    BuildContext context, {
    required GestureTapCallback onNext,
    required GestureTapCallback onSkip,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 35),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  AppText.text("2", color: AppColors.blackColor, fontsize: 18),
                  AppText.text("/", color: AppColors.greyColor, fontsize: 18),
                  AppText.text("3", color: AppColors.greyColor, fontsize: 18),
                ],
              ),
              InkWell(
                onTap: onSkip,
                child: AppText.text("Skip",
                    color: AppColors.blackColor, fontsize: 20),
              ),
            ],
          ),
          SizedBox(
            height: AppConfig(context).height * 0.05,
          ),
          Container(
            height: AppConfig(context).height / 2,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/onbord_two.jpg"),
                fit: BoxFit.cover,
              ),
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: AppConfig(context).height * 0.05,
          ),
          AppText.text("Make payment",
              color: AppColors.blackColor,
              fontsize: 22,
              textAlignment: TextAlign.center),
          SizedBox(
            height: AppConfig(context).height * 0.01,
          ),
          AppText.text(
              "A product is item offerd for a sale.\nA product can be a service or an item. It can be physical or in vitrual or cyber form",
              color: AppColors.greyColor,
              fontsize: 14,
              maxlines: 3,
              textAlignment: TextAlign.center),
          SizedBox(
            height: AppConfig(context).height * 0.05,
          ),
          Material(
            borderRadius: BorderRadius.circular(30),
            color: AppColors.primaryColor,
            child: InkWell(
              borderRadius: BorderRadius.circular(30),
              onTap: onNext,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                ),
                height: 60,
                width: AppConfig(context).width / 1.9,
                child: Center(
                    child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    AppText.text(
                      "Next",
                      color: AppColors.background,
                      fontsize: 18,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Stack(
                      children: const [
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                          color: Color.fromARGB(255, 208, 208, 208),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                            color: AppColors.background,
                          ),
                        )
                      ],
                    )
                  ],
                )),
              ),
            ),
          )
        ],
      ),
    );
  }

  onBordThree(
    BuildContext context, {
    required GestureTapCallback onNext,
    required GestureTapCallback onSkip,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 35),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  AppText.text("3", color: AppColors.blackColor, fontsize: 18),
                  AppText.text("/", color: AppColors.blackColor, fontsize: 18),
                  AppText.text("3", color: AppColors.blackColor, fontsize: 18),
                ],
              ),
              InkWell(
                onTap: onSkip,
                child: AppText.text("Skip",
                    color: AppColors.blackColor, fontsize: 20),
              ),
            ],
          ),
          SizedBox(
            height: AppConfig(context).height * 0.05,
          ),
          Container(
            height: AppConfig(context).height / 2,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/onbord_three.jpg"),
                fit: BoxFit.cover,
              ),
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: AppConfig(context).height * 0.05,
          ),
          AppText.text("Get Your Order",
              color: AppColors.blackColor,
              fontsize: 22,
              textAlignment: TextAlign.center),
          SizedBox(
            height: AppConfig(context).height * 0.01,
          ),
          AppText.text(
              "A product is item offerd for a sale.\nA product can be a service or an item. It can be physical or in vitrual or cyber form",
              color: AppColors.greyColor,
              fontsize: 14,
              maxlines: 3,
              textAlignment: TextAlign.center),
          SizedBox(
            height: AppConfig(context).height * 0.05,
          ),
          Material(
            borderRadius: BorderRadius.circular(30),
            color: AppColors.primaryColor,
            child: InkWell(
              borderRadius: BorderRadius.circular(30),
              onTap: onNext,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                ),
                height: 60,
                width: AppConfig(context).width / 1.9,
                child: Center(
                    child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    AppText.text(
                      "Get Started",
                      color: AppColors.background,
                      fontsize: 18,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Stack(
                      children: const [
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                          color: Color.fromARGB(255, 208, 208, 208),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                            color: Color.fromARGB(255, 208, 208, 208),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                            color: AppColors.background,
                          ),
                        )
                      ],
                    )
                  ],
                )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
