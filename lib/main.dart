import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:investwise/bindings/user_layout_binding.dart';
import 'package:investwise/pages/auth_screen/auth_intro/index.dart';
import 'package:investwise/pages/auth_screen/login/index.dart';
import 'package:investwise/pages/dashboard/index.dart';
import 'package:investwise/pages/layout/user_layout.dart';
import 'package:investwise/pages/profile/index.dart';
import 'package:investwise/pages/transaction/index.dart';
import 'package:investwise/theme.dart';

import 'pages/auth_screen/otp/index.dart';
import 'pages/auth_screen/register/index.dart';
import 'pages/onboarding_screen/index.dart';
import 'pages/project/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // translations: Messages(), // your translations
      locale: const Locale(
          'en', 'UK'), // translations will be displayed in that locale
      fallbackLocale: const Locale('en', 'UK'),
      title: "appName".tr,
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => const OnboardingScreen(),
        ),
        GetPage(
          name: '/authintro',
          page: () => const AuthIntroScreen(),
        ),
        GetPage(
          name: '/login',
          page: () => LoginScreen(),
          //binding: LoginBinding(),
        ),
        GetPage(
            name: '/user_layout',
            page: () => UserLayout(),
            binding: UserLayoutBinding()),
        GetPage(
          name: '/otp',
          page: () => OtpScreen(),
        ),
        GetPage(
          name: '/project',
          page: () => Project(),
        ),
        GetPage(
          name: '/transaction',
          page: () => Transaction(),
        ),
        GetPage(
          name: '/profile',
          page: () => Profile(),
        ),
        GetPage(
          name: '/dashboard',
          page: () => Dashboard(),
        ),
        GetPage(
          name: '/register',
          page: () => RegisterScreen(),
          //binding: RegisterBinding(),
        ),
        // GetPage(
        //   name: '/order',
        //   page: () => Order(),
        //   //binding: RegisterBinding(),
        // ),
        // GetPage(
        //   name: '/order_detail',
        //   page: () => OrderDetail(),
        //   //binding: RegisterBinding(),
        // ),
      ],
    );
  }
}
