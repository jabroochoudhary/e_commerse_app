import '/Module/My%20Profile/Componenets/my_profile_components.dart';
import '/Utills/App%20Text/app_text.dart';
import '/Utills/App%20Theme/AppColors.dart';
import '/Utills/App%20Theme/app_config.dart';
import 'package:flutter/material.dart';

class MyProfileView extends StatelessWidget {
  const MyProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.dullBackground,
      body: Stack(
        children: [
         Positioned(
            top: AppConfig(context).height * 0.12,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              width: AppConfig(context).width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      height: 120,
                      width: 120,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.greyColor,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/me.png"),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: AppConfig(context).height / 50,
                  ),
                  Center(
                    child: AppText.text(
                      "Jabran Haider",
                      fontsize: 22,
                      fontweight: FontWeight.w500,
                      color: AppColors.blackColor,
                    ),
                  ),
                  SizedBox(
                    height: AppConfig(context).height * 0.005,
                  ),
                  Center(
                    child: AppText.text(
                      "jabroochoudhary@gmail.com",
                      fontsize: 13,
                      fontweight: FontWeight.w400,
                      color: AppColors.greyColor,
                    ),
                  ),
                  SizedBox(
                    height: AppConfig(context).height / 50,
                  ),
                  Row(
                    children: [
                      MyProfileComponenets().card(
                          context: context,
                          icon: Icons.shopping_bag,
                          name: "Progress Order",
                          value: "10+"),
                      MyProfileComponenets().card(
                          context: context,
                          icon: Icons.view_agenda,
                          name: "Promocodes",
                          value: "5",
                          mainColor: Colors.blue),
                      MyProfileComponenets().card(
                          context: context,
                          icon: Icons.star,
                          name: "Reviews",
                          mainColor: Colors.yellow,
                          value: "4.5K"),
                    ],
                  ),
                  SizedBox(
                    height: AppConfig(context).height / 40,
                  ),
                  AppText.text(
                    "Personal Information",
                    color: AppColors.blackColor,
                    fontsize: 20,
                    fontweight: FontWeight.w500,
                    textAlignment: TextAlign.start,
                  ),
                  Container(
                    width: AppConfig(context).width,
                    height: AppConfig(context).height * 0.25,
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: AppColors.background,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: AppColors.greyColor,
                        width: 0.1,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyProfileComponenets().tile(
                          context: context,
                          title: "Name:",
                          value: "Jabran Haider",
                        ),
                        MyProfileComponenets().tile(
                          context: context,
                          title: "Email:",
                          value: "jabroochoudhary@gmail.com",
                        ),
                        MyProfileComponenets().tile(
                          context: context,
                          title: "Location:",
                          value: "San Diago",
                        ),
                        MyProfileComponenets().tile(
                          context: context,
                          title: "Zip Code:",
                          value: "1200",
                        ),
                        MyProfileComponenets().tile(
                          context: context,
                          title: "Phone Number:",
                          value: "+92 315 5460048",
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
         Positioned(
            top: 0,
            child: Container(
              height: 70,
              color: Colors.transparent,
              width: AppConfig(context).width,
              padding: const EdgeInsets.only(
                top: 35,
                left: 10,
                right: 10,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(),
                  AppText.text(
                    "Profile",
                    fontsize: 22,
                    fontweight: FontWeight.bold,
                    color: AppColors.blackColor,
                  ),
                  InkWell(onTap: () {}, child: Icon(Icons.more_vert)),
                ],
              ),
            ),
          ),
          ],
      ),
    );
  }
}
