import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';

import '/../Module/Favorite/Views/favorite_view.dart';
import '/../Module/Home/Views/home_view.dart';
import '/../Module/My%20Orders/Views/my_orders_view.dart';
import '/../Module/My%20Profile/Views/my_profile_view.dart';
import '/../Utills/App%20Theme/AppColors.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatefulWidget {
  AdvancedDrawerController advancedDrawerController;
  DashboardView(this.advancedDrawerController, {Key? key}) : super(key: key);

  @override
  State<DashboardView> createState() =>
      _DashboardViewState(advancedDrawerController);
}

class _DashboardViewState extends State<DashboardView> {
  AdvancedDrawerController advancedDrawerController;
  _DashboardViewState(this.advancedDrawerController);

  int _selectedIndex = 0;
  List<Widget> screens = [
    Container(),
    MyOrdersView(),
    FavoriteView(),
    MyProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:_selectedIndex==0?HomeView(advancedDrawerController: advancedDrawerController) : screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.primaryColor,
        backgroundColor: AppColors.background,
        unselectedItemColor: AppColors.dullBlackColor,
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: "",
            backgroundColor: AppColors.background,
          ),
          const BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.shopping_cart),
            backgroundColor: AppColors.background,
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(_selectedIndex == 2
                ? Icons.favorite
                : Icons.favorite_border_outlined),
            backgroundColor: AppColors.background,
          ),
          const BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.person),
            backgroundColor: AppColors.background,
          ),
        ],
      ),
    );
  }
}
