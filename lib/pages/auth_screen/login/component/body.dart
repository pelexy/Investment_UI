import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:investwise/utils/sizeconfig.dart';

import 'sign_in_form.dart';

class Body extends GetView {
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
                  "Welcome back",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                SignForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Center(
                  child: Column(children: [
                    Text("Don't have an account?"),
                    GestureDetector(
                      child: const Text(
                        "Create An Account",
                        style: TextStyle(color: Colors.blue),
                      ),
                      onTap: () => Get.toNamed('/register'),
                    )
                  ]),
                ),

                SizedBox(height: SizeConfig.screenHeight * 0.04),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     SocalCard(
                //       icon: "assets/icons/google-icon.svg",
                //       press: () {},
                //     ),
                //     SocalCard(
                //       icon: "assets/icons/facebook-2.svg",
                //       press: () {},
                //     ),
                //     SocalCard(
                //       icon: "assets/icons/twitter.svg",
                //       press: () {},
                //     ),
                //   ],
                // ),
                SizedBox(height: getProportionateScreenHeight(20)),
                //   NoAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
