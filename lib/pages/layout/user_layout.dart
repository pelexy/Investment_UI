import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:investwise/controllers/bottom_nav_controller.dart';
import 'package:investwise/pages/auth_screen/login/index.dart';
import 'package:investwise/pages/dashboard/index.dart';
import 'package:investwise/pages/project/index.dart';
import 'package:investwise/pages/transaction/index.dart';

import '../../theme.dart';

class UserLayout extends GetView {
  final _pageOptions = [Dashboard(), Project(), Transaction()];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ButtomNavController>(builder: (controller) {
      return Scaffold(
          body: SafeArea(
            child: IndexedStack(
                index: controller.selectedPageIndex, children: _pageOptions),
          ),
          bottomNavigationBar: BottomNavigationBar(
              items: [
                BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      "assets/icons/Dashboard.svg",
                      color: controller.selectedPageIndex == 0
                          ? MyTheme.primaryColor
                          : MyTheme.lightPrimaryColor,
                    ),
                    title: Text('Dashboard')),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      "assets/icons/Bill Icon.svg",
                      color: controller.selectedPageIndex == 1
                          ? MyTheme.primaryColor
                          : MyTheme.lightPrimaryColor,
                    ),
                    title: Text('Projects')),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      "assets/icons/Parcel.svg",
                      color: controller.selectedPageIndex == 2
                          ? MyTheme.primaryColor
                          : MyTheme.lightPrimaryColor,
                    ),
                    title: Text('Transactions')),
              ],
              currentIndex: controller.selectedPageIndex,
              onTap: controller.changeTabIndex));
    });
  }
}
