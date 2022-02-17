import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:investwise/components/flat_button.dart';
import 'package:investwise/theme.dart';
import 'package:investwise/utils/sizeconfig.dart';

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  String? conform_password;
  bool remember = false;
  final List<String?> errors = [];

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Full Name",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.black87),
              ),
              const SizedBox(
                height: 5,
              ),
              TextFormField(
                obscureText: false,
                decoration: const InputDecoration(
                  hintText: "Enter Full Name",
                ),
              ),
            ],
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.02),
          //Email
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Email",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.black87),
              ),
              const SizedBox(
                height: 5,
              ),
              TextFormField(
                obscureText: false,
                decoration: const InputDecoration(
                  hintText: "Enter Email",
                ),
              ),
            ],
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.02),
          //Phone
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Phone Number",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.black87),
              ),
              const SizedBox(
                height: 5,
              ),
              TextFormField(
                obscureText: false,
                decoration: const InputDecoration(
                  hintText: "Enter Phone Number",
                ),
              ),
            ],
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.02),
          Row(children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Password",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.black87),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: "Enter Password",

                      //fillColor: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Confirm Password",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.black87),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: "Enter Password",

                      //fillColor: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ]),
          //Submit Button
          SizedBox(height: SizeConfig.screenHeight * 0.04),
          ButtonDefault(
            color: Colors.white,
            background: MyTheme.primaryColor,
            text: "Sign Up",
            bordercolor: MyTheme.primaryColor,
            press: () => Get.toNamed('/otp'),
          )
        ],
      ),
    );
  }
}
