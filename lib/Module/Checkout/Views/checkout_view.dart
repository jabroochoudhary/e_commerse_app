import 'package:ecommerce_app_builtin_dev/Module/Checkout/Componenets/checkout_componenets.dart';
import 'package:ecommerce_app_builtin_dev/Module/Payment/VIews/payment_view.dart';
import 'package:ecommerce_app_builtin_dev/Utills/App%20Button/app_button.dart';
import 'package:ecommerce_app_builtin_dev/Utills/App%20Text/app_text.dart';
import 'package:ecommerce_app_builtin_dev/Utills/App%20Theme/AppColors.dart';
import 'package:ecommerce_app_builtin_dev/Utills/App%20Theme/app_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Utills/App Bar/my_app_bar.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar().appBar(
        isCentrTitle: true,
        isPrefixIcon: true,
        isTitleWithIcon: false,
        prefixIconData: Icons.arrow_back_ios,
        title: "Checkout",
        fontSize: 22,
        prefixIconPressed: () => Get.back(),
        fontweight: FontWeight.bold,
      ),
      body: Container(
        padding: EdgeInsets.only(left: 15, right: 15, top: 15),
        child: Column(
          children: [
            AppText.text(
              "Delivery Address",
              fontsize: 22,
              fontweight: FontWeight.bold,
              textAlignment: TextAlign.left,
              color: AppColors.blackColor,
            ),
            SizedBox(
              height: AppConfig(context).height * 0.02,
            ),
            CheckoutComponenst().addressCard(context: context, isChecked: true),
            CheckoutComponenst()
                .addressCard(context: context, isChecked: false),
            SizedBox(
              height: AppConfig(context).height * 0.03,
            ),
            AppText.text(
              "Billing information",
              fontsize: 22,
              fontweight: FontWeight.bold,
              textAlignment: TextAlign.left,
              color: AppColors.blackColor,
            ),
            SizedBox(
              height: AppConfig(context).height * 0.03,
            ),
            Container(
              width: AppConfig(context).width,
              height: AppConfig(context).height * 0.18,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                color: AppColors.background,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppText.text(
                        "Delivery Fee  :",
                        fontsize: 18,
                        fontweight: FontWeight.w500,
                        color: AppColors.dullBlackColor,
                      ),
                      AppText.text(
                        "\$50",
                        fontsize: 18,
                        fontweight: FontWeight.w500,
                        color: AppColors.blackColor,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppText.text(
                        "Subtotal         :",
                        fontsize: 18,
                        fontweight: FontWeight.w500,
                        color: AppColors.dullBlackColor,
                      ),
                      AppText.text(
                        "\$520",
                        fontsize: 18,
                        fontweight: FontWeight.w500,
                        color: AppColors.blackColor,
                      ),
                    ],
                  ),
                  Container(
                    height: 0.5,
                    color: AppColors.dullBlackColor,
                    width: AppConfig(context).width,
                    margin: EdgeInsets.symmetric(
                        vertical: AppConfig(context).height / 45),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppText.text(
                        "Total               :",
                        fontsize: 18,
                        fontweight: FontWeight.w500,
                        color: AppColors.dullBlackColor,
                      ),
                      AppText.text(
                        "\$570",
                        fontsize: 18,
                        fontweight: FontWeight.w500,
                        color: AppColors.blackColor,
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: AppConfig(context).height * 0.03,
            ),
            AppText.text(
              "Payment Method",
              fontsize: 22,
              fontweight: FontWeight.bold,
              textAlignment: TextAlign.left,
              color: AppColors.blackColor,
            ),
            SizedBox(
              height: AppConfig(context).height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CheckoutComponenst().paymentMethodCard(
                  context: context,
                  imageUrl: "assets/logo/apple_Pay_logo.jpg",
                ),
                CheckoutComponenst().paymentMethodCard(
                  context: context,
                  imageUrl: "assets/logo/visa_logo.png",
                ),
                CheckoutComponenst().paymentMethodCard(
                  context: context,
                  imageUrl: "assets/logo/mastercard_logo.png",
                ),
                CheckoutComponenst().paymentMethodCard(
                  context: context,
                  imageUrl: "assets/logo/paypal_logo.png",
                ),
              ],
            ),
            SizedBox(
              height: AppConfig(context).height / 32,
            ),
            Appbutton().primaryButton(
              context: context,
              title: "Swipe for Payment",
              callback: () => Get.to(() => PaymentView()),
              width: AppConfig(context).width * 0.65,
              // height: 40,
              fontsize: 18,
              isPrefixIcon: true,
              fontWeight: FontWeight.w600,
            ),
          ],
        ),
      ),
    );
  }
}
