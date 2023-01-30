import 'package:ecommerce_app_builtin_dev/Module/My%20Orders/Components/my_order_components.dart';
import 'package:ecommerce_app_builtin_dev/Utills/App%20Text/app_text.dart';
import 'package:ecommerce_app_builtin_dev/Utills/App%20Theme/AppColors.dart';
import 'package:flutter/material.dart';

import '../../../Utills/App Bar/my_app_bar.dart';

class MyOrdersView extends StatelessWidget {
  MyOrdersView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: AppText.text(
            "My Orders",
            fontsize: 18,
            fontweight: FontWeight.w500,
            color: AppColors.blackColor,
          ),
          backgroundColor: AppColors.background,
          bottom: TabBar(
            indicatorWeight: 5,
            splashBorderRadius: BorderRadius.circular(10),
            indicatorColor: AppColors.primaryColor,
            padding: EdgeInsets.symmetric(horizontal: 20),
            unselectedLabelColor: AppColors.dullBlackColor,
            labelColor: AppColors.primaryColor,
            labelStyle: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
            tabs: const [
              Tab(
                text: "Completed",
              ),
              Tab(
                text: "Cancelled",
              ),
            ],
          ),
        ), // AppBar
        body: TabBarView(
          children: [
            ListView.builder(
              itemCount: 15,
              itemBuilder: (BuildContext context, int index) {
                return MyOrderComponents().card(
                    context: context,
                    date: DateTime.now(),
                    name: "Honely Shirts");
              },
            ),
            ListView.builder(
              itemCount: 15,
              itemBuilder: (BuildContext context, int index) {
                return MyOrderComponents().card(
                    context: context,
                    date: DateTime.now(),
                    name: "Honely Shirts");
              },
            ),
          ],
        ), // TabBarView
      ), // Sca )
    );
  }
}
