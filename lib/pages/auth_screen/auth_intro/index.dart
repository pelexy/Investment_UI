import 'package:flutter/material.dart';

import 'package:investwise/utils/sizeconfig.dart';

import 'component/body.dart';

class AuthIntroScreen extends StatelessWidget {
  static String routeName = "/splash";

  const AuthIntroScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
