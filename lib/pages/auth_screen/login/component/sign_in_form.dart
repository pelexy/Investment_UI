import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:investwise/components/flat_button.dart';
import 'package:investwise/theme.dart';
import 'package:investwise/utils/sizeconfig.dart';

class SignForm extends GetWidget {
  @override
  Widget build(BuildContext context) {
    return Form(
      // key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
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
          //Password
          Column(
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

          Row(
            children: [
              Checkbox(
                value: true,
                activeColor: MyTheme.primaryColor,
                onChanged: (value) {},
              ),
              const Text("Remember me"),
              const Spacer(),
              GestureDetector(
                child: const Text(
                  "Forgot Password",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.04),
          ButtonDefault(
              color: Colors.white,
              background: MyTheme.primaryColor,
              text: "Sign In",
              bordercolor: MyTheme.primaryColor,
              press: () => Get.toNamed('/user_layout')),

          // ElevatedButton(
          //   child: Text('Submit'),
          //   onPressed: () {
          //     if (_formKey.currentState.validate()) {
          //       Get.to(HomePage());
          //     }
          //   },
          //   style: ElevatedButton.styleFrom(
          //     primary: Get.theme.primaryColor, // background
          //     onPrimary: Colors.white, // foreground
          //   ),
          // ),
        ],
      ),
    );
  }
}
