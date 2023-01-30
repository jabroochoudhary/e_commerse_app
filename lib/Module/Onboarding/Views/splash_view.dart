import 'dart:async';

import 'package:ecommerce_app_builtin_dev/Utills/App%20Theme/AppColors.dart';

import 'onboarding_view.dart';
import '/Utills/App%20Text/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 2), () {
      Get.to(() => OnBoardingView());
    });
    return const Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: Image(
          height: 100,
          image: AssetImage("assets/logo/app_logo.png"),
        ),
      ),
    );
  }
}
