import 'package:ecommerce_app_builtin_dev/Module/Checkout/Views/checkout_view.dart';
import 'package:ecommerce_app_builtin_dev/Module/My%20Cart/Components/my_cart_componenets.dart';
import 'package:ecommerce_app_builtin_dev/Utills/App%20Bar/my_app_bar.dart';
import 'package:ecommerce_app_builtin_dev/Utills/App%20Button/app_button.dart';
import 'package:ecommerce_app_builtin_dev/Utills/App%20Text/app_text.dart';
import 'package:ecommerce_app_builtin_dev/Utills/App%20Theme/AppColors.dart';
import 'package:ecommerce_app_builtin_dev/Utills/App%20Theme/app_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.dullBackground,
      appBar: MyAppBar().appBar(
        isCentrTitle: true,
        isPrefixIcon: true,
        isTitleWithIcon: false,
        prefixIconData: Icons.arrow_back_ios,
        title: "My Cart",
        fontSize: 22,
        prefixIconPressed: () => Get.back(),
        fontweight: FontWeight.bold,
      ),
      body: Container(
        padding:
            EdgeInsets.only(top: 20, bottom: AppConfig(context).height * 0.20),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return MyCartComponents().card(
              context: context,
              price: (++index / 10 * 45).roundToDouble().toString(),
              qty: index,
            );
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        width: AppConfig(context).width,
        height: AppConfig(context).height * 0.20,
        padding: EdgeInsets.only(
          left: 15,
          right: 15,
          top: 15,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText.text(
                  "Subtotal : ",
                  fontsize: 18,
                  fontweight: FontWeight.w400,
                ),
                AppText.text(
                  "\$720",
                  fontsize: 18,
                  fontweight: FontWeight.w600,
                ),
              ],
            ),
            SizedBox(
              height: AppConfig(context).height * 0.05,
            ),
            Appbutton().primaryButton(
              context: context,
              title: "Checkout",
              callback: () {
                Get.to(() => CheckoutView());
              },
              width: AppConfig(context).width * 0.75,
              fontsize: 18,
              fontWeight: FontWeight.w500,
            )
          ],
        ),
      ),
    );
  }
}
