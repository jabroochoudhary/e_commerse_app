import 'package:ecommerce_app_builtin_dev/Utills/App%20Bar/my_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Utills/App Theme/app_config.dart';
import '../../Home/Components/home_cards_componenets.dart';
import '../../Item Details/Views/item_details_view.dart';

class FavoriteView extends StatelessWidget {
  FavoriteView({Key? key}) : super(key: key);
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
      appBar: MyAppBar().appBar(
        isCentrTitle: true,
        isPrefixIcon: false,
        isTitleWithIcon: false,
        prefixIconData: Icons.arrow_back_ios,
        title: "Favorite",
        fontSize: 22,
        // prefixIconPressed: () => Get.back(),
        fontweight: FontWeight.bold,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: AppConfig(context).height * 0.00095,
          ),
          // physics: NeverScrollableScrollPhysics(),
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
              onPressed: () => Get.to(
                () => ItemDetailsView(
                  bgColor: bgColor[bgColorIndex],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
