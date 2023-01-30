import 'package:ecommerce_app_builtin_dev/Module/My%20Wallets/Views/my_wallet_view.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';

import '/Module/Favorite/Views/favorite_view.dart';
import '/Module/Home/Components/home_cards_componenets.dart';
import '/Module/Item%20Details/Views/item_details_view.dart';
import '/Module/My%20Orders/Views/my_orders_view.dart';
import '/Module/Search/Views/search_view.dart';
import '/Module/Settings/Views/settings_view.dart';
import '/Utills/App%20Bar/my_app_bar.dart';
import '/Utills/App%20Text/app_text.dart';
import '/Utills/App%20Theme/AppColors.dart';
import '/Utills/App%20Theme/app_config.dart';
import '/Utills/textfeilds.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  AdvancedDrawerController advancedDrawerController;
  HomeView({required this.advancedDrawerController, Key? key})
      : super(key: key);
  List<Color> bgColor = [
    Color.fromARGB(255, 255, 225, 223),
    Color.fromARGB(255, 224, 255, 225),
    Color.fromARGB(255, 250, 235, 213),
    Color.fromARGB(255, 223, 241, 255),
    Color.fromARGB(255, 251, 227, 255),
  ];
  int bgColorIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.dullBackground,
      appBar: MyAppBar().appBar(
        isPrefixIcon: true,
        ispostfixIcon: true,
        prefixIconData: Icons.menu,
        postfixIconData: Icons.notifications_active,
        title: "Home screen",
        isTitleWithIcon: true,
        prefixIconPressed: () {
          advancedDrawerController.showDrawer();
        },
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            AppText.text(
              "Explore",
              fontsize: 30,
              fontweight: FontWeight.w500,
              color: AppColors.blackColor,
              textAlignment: TextAlign.start,
            ),
            const SizedBox(
              height: 18,
            ),
            AppText.text(
              "best Outfits for you",
              fontsize: 22,
              fontweight: FontWeight.w400,
              color: AppColors.greyColor,
              textAlignment: TextAlign.start,
            ),
            const SizedBox(
              height: 25,
            ),
            AppTextFeild().searchFeild(
                context: context,
                hintText: "Search items...",
                isFocus: false,
                onTextFiledClick: () =>
                    Get.to(() => SearchView(advancedDrawerController))),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HomeCardsComponents().smallCard(
                  context: context,
                  title: "Dress",
                  imagePath: "assets/logo/dress_logo.jpg",
                ),
                HomeCardsComponents().smallCard(
                  context: context,
                  title: "Shirs",
                  imagePath: "assets/logo/shirt_logo.jpg",
                ),
                HomeCardsComponents().smallCard(
                  context: context,
                  title: "Pants",
                  imagePath: "assets/logo/pants_logo.png",
                ),
                HomeCardsComponents().smallCard(
                  context: context,
                  title: "Tshirt",
                  imagePath: "assets/logo/tshirt_logo.png",
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText.text(
                  "New Arrival",
                  fontsize: 20,
                  fontweight: FontWeight.w500,
                  color: AppColors.blackColor,
                ),
                InkWell(
                  onTap: () {},
                  child: AppText.text(
                    "See All",
                    fontsize: 15,
                    fontweight: FontWeight.w500,
                    color: AppColors.dullBlackColor,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: AppConfig(context).height * 0.00095,
              ),
              physics: NeverScrollableScrollPhysics(),
              itemCount: 10,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                if (bgColorIndex == 4) {
                  bgColorIndex = 0;
                } else if (index > 0) {
                  bgColorIndex++;
                }

                return HomeCardsComponents().mainCard(
                  context: context,
                  title: "Long sleeve shirt",
                  imagePath: "assets/logo/tshirt_logo.png",
                  price: "165",
                  bgColor: bgColor[bgColorIndex],
                  onPressed: () => Get.to(() => ItemDetailsView(
                        bgColor: bgColor[bgColorIndex],
                      )),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
