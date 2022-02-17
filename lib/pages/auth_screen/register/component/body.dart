import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:investwise/utils/sizeconfig.dart';

import 'sign_up_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () => Get.back(), icon: Icon(Icons.arrow_back)),
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Image.asset(
                  'assets/logo.png',
                  width: getProportionateScreenWidth(200),
                ),
                const Text(
                  "Open An Acount With Us",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                SignUpForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                SizedBox(height: getProportionateScreenHeight(20)),
                Center(
                    child: Text(
                  'By continuing your confirm that you agree \nwith our Term and Condition',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.caption,
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
