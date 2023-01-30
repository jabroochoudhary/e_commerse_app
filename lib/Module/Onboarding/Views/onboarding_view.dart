import '/Module/Authantication/Views/login_view.dart';

import '/Module/Onboarding/Components/onbord_components.dart';
import '/Module/Onboarding/View%20Model/onboarding_controller.dart';

import '/Utills/App%20Theme/AppColors.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingView extends StatelessWidget {
  OnBoardingView({Key? key}) : super(key: key);
  final _cntrolller = Get.put(OnboardingController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
          backgroundColor: AppColors.background,
          body: _cntrolller.index.value == 0
              ? OnbordComponents().onBordOne(
                  context,
                  onNext: () {
                    _cntrolller.incrementIndex();
                  },
                  onSkip: () => _cntrolller.skipOnboarding(),
                )
              : _cntrolller.index.value == 1
                  ? OnbordComponents().onBordTwo(
                      context,
                      onNext: () {
                        _cntrolller.incrementIndex();
                      },
                      onSkip: () => _cntrolller.skipOnboarding(),
                    )
                  : OnbordComponents().onBordThree(
                      context,
                      onNext: () {
                        Get.offAll(() => LoginView());
                      },
                      onSkip: () => _cntrolller.skipOnboarding(),
                    )
          // : const SizedBox(),
          ),
    );
  }
}
