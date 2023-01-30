import 'package:ecommerce_app_builtin_dev/Module/Search/View%20Model/settings_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:get/get.dart';
import '../Components/search_components.dart';
import '/Utills/App%20Button/app_button.dart';
import '/Utills/App%20Text/app_text.dart';
import '/Utills/App%20Theme/AppColors.dart';
import '/Utills/App%20Theme/app_config.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import '../../../Utills/App Bar/my_app_bar.dart';
import '../../../Utills/textfeilds.dart';
import '../../Home/Components/home_cards_componenets.dart';
import '../../Item Details/Views/item_details_view.dart';

class SearchView extends StatefulWidget {
  AdvancedDrawerController advancedDrawerController;
  SearchView(this.advancedDrawerController, {Key? key}) : super(key: key);

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
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
        title: "Search screen",
        isTitleWithIcon: true,
        prefixIconPressed: () {
          Get.back();
          widget.advancedDrawerController.showDrawer();
        },
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          // physics: NeverScrollableScrollPhysics(),
          children: [
            SizedBox(
              height: 10,
            ),
            AppTextFeild().searchFeild(
              context: context,
              hintText: "Search items...",
              isFocus: true,
              onFilterClick: () {
                filterModelSheet();
              },
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText.text(
                  "Recent searches",
                  fontsize: 20,
                  fontweight: FontWeight.w500,
                  color: AppColors.blackColor,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Divider(
              height: 0.5,
              color: AppColors.dullBlackColor,
            ),
            SizedBox(
              height: 5,
            ),
            AppText.text(
              'Search results showing for "Shirt"',
              textAlignment: TextAlign.start,
              fontsize: 20,
              fontweight: FontWeight.w500,
              color: AppColors.blackColor,
            ),
            const SizedBox(
              height: 25,
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

  filterModelSheet() {
    return showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        )),
        builder: (context) => SearchComponent());
  }
}
