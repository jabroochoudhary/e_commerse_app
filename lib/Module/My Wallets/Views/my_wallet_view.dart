import 'package:carousel_slider/carousel_slider.dart';
import '/../Module/My%20Wallets/Components/my_wallet_components.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Utills/App Text/app_text.dart';
import '../../../Utills/App Theme/AppColors.dart';
import '../../../Utills/App Theme/app_config.dart';

class MyWalletView extends StatelessWidget {
  const MyWalletView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
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
                  InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Icon(Icons.arrow_back_ios)),
                  AppText.text(
                    "My Wallet",
                    fontsize: 22,
                    fontweight: FontWeight.bold,
                    color: AppColors.blackColor,
                  ),
                  InkWell(onTap: () {}, child: Icon(Icons.more_vert)),
                ],
              ),
            ),
          ),
          Positioned(
            top: AppConfig(context).height * 0.12,
            child: Container(
              height:
                  AppConfig(context).height - AppConfig(context).height * 0.12,
              padding: EdgeInsets.symmetric(horizontal: 0),
              width: AppConfig(context).width,
              child: SingleChildScrollView(
                child: Column(
                  // mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // physics: NeverScrollableScrollPhysics(),
                  // shrinkWrap: true,
                  children: [
                    SizedBox(
                      height: 180,
                      child: CarouselSlider(
                        options: CarouselOptions(
                          height: 400.0,
                          // autoPlay: true,
                          // animateToClosest: true,
                          enableInfiniteScroll: false,

                          pageSnapping: true,
                          enlargeCenterPage: true,
                        ),
                        items: [
                          const <Color>[
                            Color.fromARGB(255, 107, 127, 239),
                            Color.fromARGB(255, 135, 196, 208),
                            Color.fromARGB(255, 207, 244, 128),
                            Color.fromARGB(255, 232, 244, 128),
                          ],
                          const <Color>[
                            Color.fromARGB(255, 239, 107, 171),
                            Color.fromARGB(255, 208, 162, 135),
                            Color(0xffF49B80),
                            Color(0xffF49B80),
                          ],
                          const <Color>[
                            Color.fromARGB(255, 239, 107, 235),
                            Color.fromARGB(255, 208, 135, 193),
                            Color.fromARGB(255, 244, 128, 128),
                            Color.fromARGB(255, 244, 165, 128),
                          ]
                        ].map((i) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                width: MediaQuery.of(context).size.width,
                                margin: EdgeInsets.symmetric(horizontal: 5.0),
                                padding: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color.fromARGB(172, 76, 175, 79),
                                  gradient: LinearGradient(
                                    begin: Alignment.topRight,
                                    end: Alignment.centerLeft,
                                    stops: [0.1, 0.4, 0.7, 0.9],
                                    colors: i,
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        AppText.text(
                                          "Premium Card",
                                          color: AppColors.background,
                                          fontsize: 18,
                                          fontweight: FontWeight.w500,
                                        ),
                                        AppText.text(
                                          "VISA",
                                          color: AppColors.background,
                                          fontsize: 22,
                                          fontweight: FontWeight.w500,
                                        ),
                                      ],
                                    ),
                                    SizedBox(),
                                    Container(
                                      height: 35,
                                      width: 45,
                                      decoration: const BoxDecoration(
                                        color: AppColors.transparent,
                                        image: DecorationImage(
                                          fit: BoxFit.contain,
                                          image: AssetImage(
                                            "assets/logo/sim_card_logo.png",
                                          ),
                                        ),
                                      ),
                                    ),
                                    AppText.text(
                                      "123 254 1548",
                                      color: AppColors.background,
                                      fontsize: 22,
                                      fontweight: FontWeight.w500,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        AppText.text(
                                          "Valid  20/09/2025",
                                          color: AppColors.background,
                                          fontsize: 18,
                                          fontweight: FontWeight.w500,
                                        ),
                                        AppText.text(
                                          "Thomas",
                                          color: AppColors.background,
                                          fontsize: 18,
                                          fontweight: FontWeight.w500,
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              );
                            },
                          );
                        }).toList(),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: AppText.text(
                        "Recent transactions",
                        color: AppColors.blackColor,
                        fontsize: 20,
                        fontweight: FontWeight.w500,
                      ),
                    ),
                    ListView.builder(
                      itemCount: 10,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return MyWalletComponents().card(
                          context: context,
                          date: DateTime.now(),
                          onTap: () {},
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
