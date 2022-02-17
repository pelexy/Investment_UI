import 'package:flutter/material.dart';
import 'package:investwise/pages/onboarding_screen/components/body.dart';
import 'package:investwise/utils/sizeconfig.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
