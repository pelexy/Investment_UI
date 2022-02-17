import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:investwise/components/flat_button.dart';
import 'package:investwise/theme.dart';
import 'package:investwise/utils/sizeconfig.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Stack(children: <Widget>[
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/naira_des.jpeg'),
                      fit: BoxFit.fitHeight),
                ),
              ),
              Container(
                color: Color.fromRGBO(0, 0, 0, 0.9),
              ),
              Container(
                  padding: EdgeInsets.only(
                      top: getProportionateScreenHeight(80),
                      left: getProportionateScreenWidth(30)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/logo-white.png',
                        width: getProportionateScreenWidth(200),
                      ),
                      const Text(
                        'Welcome to peerpro',
                        style: TextStyle(
                            fontSize: 17.0,
                            fontFamily: 'Lucida',
                            color: Color(0xFFFFFFFF)),
                      ),
                    ],
                  ))
            ]),
          ),
          Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  color: MyTheme.primaryColor,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(20)),
                  child: Column(
                    children: <Widget>[
                      const Spacer(),
                      const Spacer(flex: 7),
                      ButtonDefault(
                          color: MyTheme.primaryColor,
                          background: MyTheme.whiteColor,
                          text: "Sign In",
                          bordercolor: MyTheme.primaryColor,
                          press: () => Get.toNamed('/login')),
                      const Spacer(flex: 3),
                      ButtonDefault(
                          color: Colors.white,
                          background: MyTheme.primaryColor,
                          text: "Create An Account",
                          bordercolor: MyTheme.whiteColor,
                          press: () => Get.toNamed('/register')),
                      const Spacer(flex: 15),
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
