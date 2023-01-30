import 'package:ecommerce_app_builtin_dev/Module/My%20Cart/Views/my_cart_view.dart';
import 'package:ecommerce_app_builtin_dev/Utills/App%20Bar/my_app_bar.dart';
import 'package:ecommerce_app_builtin_dev/Utills/App%20Button/app_button.dart';
import 'package:ecommerce_app_builtin_dev/Utills/App%20Text/app_text.dart';
import 'package:ecommerce_app_builtin_dev/Utills/App%20Theme/AppColors.dart';
import 'package:ecommerce_app_builtin_dev/Utills/App%20Theme/app_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemDetailsView extends StatelessWidget {
  Color bgColor;
  ItemDetailsView({
    this.bgColor = Colors.red,
    Key? key,
  }) : super(key: key);
  // final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: MyAppBar().appBar(
        isCentrTitle: false,
        isFavouriteScree: true,
        postfixIconData: Icons.favorite,
        prefixIconData: Icons.arrow_back_ios,
        prefixIconPressed: () => Get.back(),
        postfixIconPressed: () {},
      ),
      body: Column(
        children: [
          Image.asset(
            "assets/logo/tshirt_logo.png",
            height: AppConfig(context).height * 0.35,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: AppConfig(context).height * 0.05,
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: AppColors.background,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: AppConfig(context).width / 2,
                          child: AppText.text(
                            "Casuual Honley Shirt",
                            fontsize: 25,
                            maxlines: 2,
                            textAlignment: TextAlign.start,
                            fontweight: FontWeight.w500,
                            color: AppColors.blackColor,
                          ),
                        ),
                        Spacer(),
                        AppText.text(
                          "\$175",
                          fontsize: 25,
                          fontweight: FontWeight.w500,
                          color: AppColors.blackColor,
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: AppConfig(context).height / 45,
                      ),
                      child: AppText.text(
                        'A Henly shirt is a collerless pullover shirt, by a round neckline and a placket about 3 to 5 inches(8 to 13 cm) and usually having 2-5 buttons',
                        color: AppColors.dullBlackColor.withOpacity(0.70),
                        fontsize: 14,
                        maxlines: 5,
                        textAlignment: TextAlign.justify,
                        fontweight: FontWeight.w400,
                      ),
                    ),
                    AppText.text(
                      "Colors",
                      color: AppColors.dullBlackColor.withOpacity(0.70),
                      fontsize: 15,
                    ),
                    SizedBox(
                      height: AppConfig(context).height / 45,
                    ),
                    Row(
                      children: [
                        ColorDot(
                            color: Color(
                              0xFFBEE8EA,
                            ),
                            press: () {},
                            isactive: false),
                        ColorDot(
                            color: Color(
                              0xFF141B4A,
                            ),
                            press: () {},
                            isactive: true),
                        ColorDot(
                            color: Colors.grey, press: () {}, isactive: false),
                      ],
                    ),
                    SizedBox(
                      height: AppConfig(context).height / 30,
                    ),
                    Center(
                      child: Appbutton().primaryButton(
                        context: context,
                        title: "Add to Cart",
                        callback: () {
                          Get.to(() => MyCartView());
                        },
                        fontsize: 18,
                        fontWeight: FontWeight.w500,
                        width: AppConfig(context).width / 1.5,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key? key,
    required this.color,
    required this.isactive,
    required this.press,
  }) : super(key: key);
  final Color color;
  final bool isactive;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
              color: isactive ? AppColors.primaryColor : Colors.transparent),
        ),
        child: CircleAvatar(
          radius: 10,
          backgroundColor: color,
        ),
      ),
    );
  }
}
