import 'package:ecommerce_app_builtin_dev/Module/Advance%20Drawer/drawer_tile.dart';
import 'package:ecommerce_app_builtin_dev/Module/Authantication/Views/login_view.dart';
import 'package:ecommerce_app_builtin_dev/Module/Dashboard/dashboard_view.dart';
import 'package:ecommerce_app_builtin_dev/Module/Favorite/Views/favorite_view.dart';
import 'package:ecommerce_app_builtin_dev/Module/My%20Orders/Views/my_orders_view.dart';
import 'package:ecommerce_app_builtin_dev/Module/My%20Wallets/Views/my_wallet_view.dart';
import 'package:ecommerce_app_builtin_dev/Module/Settings/Views/settings_view.dart';
import 'package:ecommerce_app_builtin_dev/Utills/App%20Text/app_text.dart';
import 'package:ecommerce_app_builtin_dev/Utills/App%20Theme/AppColors.dart';
import 'package:ecommerce_app_builtin_dev/Utills/App%20Theme/app_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:get/get.dart';

class MyAppAdvanceDrawer extends StatefulWidget {
  @override
  _MyAppAdvanceDrawerState createState() => _MyAppAdvanceDrawerState();
}

class _MyAppAdvanceDrawerState extends State<MyAppAdvanceDrawer> {
  final _advancedDrawerController = AdvancedDrawerController();
  List tileTittle = [
    "My Favourites",
    "Wallets",
    "My Orders",
    "About us",
    "Privacy policy",
    "Settings",
  ];
  List tileIcons = <IconData>[
    Icons.favorite,
    Icons.wallet,
    Icons.shopping_bag,
    Icons.file_present,
    Icons.lock,
    Icons.settings,
  ];
  List<Widget> tileScreens = [
    FavoriteView(),
    MyWalletView(),
    MyOrdersView(),
    Scaffold(body: Center(child: Text("About Us"))),
    Scaffold(body: Center(child: Text("Privacy Policy"))),
    SettingsView()
  ];

  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
      backdropColor: Color.fromARGB(255, 237, 237, 237),
      controller: _advancedDrawerController,
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(milliseconds: 300),
      animateChildDecoration: true,
      rtlOpening: false,
      // openScale: 1,
      // openRatio: 1,
      disabledGestures: false,
      childDecoration: const BoxDecoration(
        // NOTICE: Uncomment if you want to add shadow behind the page.
        // Keep in mind that it may cause animation jerks.
        // boxShadow: <BoxShadow>[
        //   BoxShadow(
        //     color: Colors.black12,
        //     blurRadius: 0.0,
        //   ),
        // ],
        borderRadius: const BorderRadius.all(Radius.circular(16)),
      ),
      child: Scaffold(
        body: DashboardView(_advancedDrawerController),
      ),
      drawer: Column(
        // mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                margin: EdgeInsets.only(right: 20, left: 20),
                width: 75.0,
                height: 75.0,
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                  shape: BoxShape.circle,
                ),
                child: const Image(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/me.png"),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // mainAxisSize: MainAxisSize.min,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppText.text(
                    "Jabran Haider",
                    fontsize: 20,
                    fontweight: FontWeight.bold,
                    color: AppColors.blackColor,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  AppText.text(
                    "Fashion Designer",
                    fontsize: 13,
                    fontweight: FontWeight.bold,
                    color: AppColors.greyColor,
                  ),
                ],
              ),
              SizedBox(
                width: 30,
              ),
              InkWell(
                  onTap: () {
                    _advancedDrawerController.toggleDrawer();
                  },
                  child: Icon(Icons.arrow_forward_ios)),
            ],
          ),
          SizedBox(
            height: AppConfig(context).height / 20,
          ),
          ...List.generate(
              6,
              (index) => Padding(
                    padding: EdgeInsets.only(left: 12, bottom: 20),
                    child: DrawerTile().tile(
                      context: context,
                      title: tileTittle[index],
                      icon: tileIcons[index],
                      onPressed: () => Get.to(tileScreens[index]),
                    ),
                  )),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: EdgeInsets.only(left: 12, bottom: 0),
            child: DrawerTile().tile(
              context: context,
              title: "Log out",
              icon: Icons.logout_sharp,
              onPressed: () => Get.offAll(() => LoginView()),
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(left: 12, bottom: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Image.asset(
                "assets/logo/app_logo.png",
                height: 60,
                width: 60,
              ),
            ),
          )
        ],
      ),
    );
  }

  void _handleMenuButtonPressed() {
    // NOTICE: Manage Advanced Drawer state through the Controller.
    // _advancedDrawerController.value = AdvancedDrawerValue.visible();
    _advancedDrawerController.showDrawer();
  }
}
