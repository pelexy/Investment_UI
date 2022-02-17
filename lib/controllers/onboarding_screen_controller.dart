import 'dart:async';

import 'package:flutter/material.dart';

import 'package:get/state_manager.dart';
import 'package:get/utils.dart';
import 'package:investwise/models/onboarding_model.dart';

class OnboardingController extends GetxController {
  @override
  var selectedPageIndex = 0.obs;
  bool get isLastPage => selectedPageIndex.value == onboardingPages.length - 1;
  var pageController = PageController();

  forwardAction() {
    if (isLastPage) {
      //go to home page
    } else {
      pageController.nextPage(duration: 300.milliseconds, curve: Curves.ease);
    }
  }

  List<OnboardingModel> onboardingPages = [
    OnboardingModel(
        imageAsset: 'assets/images/professional.png',
        title: 'Welcome to InvestWise',
        desc:
            'With Investwise you can now invest in projects, monitor how your money is used and get you ROI when your investment matures'),
    OnboardingModel(
        imageAsset: 'assets/images/invest.png',
        title: 'Invest with InvestWise',
        desc:
            'Begin to make your money to work for you. We believe you can achieve your dream through investments'),
    OnboardingModel(
        imageAsset: 'assets/images/earn.png',
        title: 'Earn With Investwise',
        desc:
            'We help you to participate in real time investment projects. We are transprent enough to help your money grow. '),
  ];
}
