import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:intl/intl.dart';
import 'package:investwise/components/menu_card.dart';
import 'package:investwise/theme.dart';
import 'package:investwise/utils/sizeconfig.dart';

class Menu extends StatelessWidget {
  const Menu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: GridView.count(
        childAspectRatio: 1.3,
        primary: false,
        padding: const EdgeInsets.all(4),
        crossAxisCount: 2,
        children: [
          GridCard(
              color: MyTheme.primaryColor,
              icon: "assets/icons/investment.svg",
              text: 'My Investments',
              description:
                  'Have access to the invested youve made on investwise',
              numOfitem: 3,
              press: () => Get.toNamed('/order')),
          GridCard(
              color: MyTheme.blue,
              icon: "assets/icons/User Icon.svg",
              text: 'My Profile',
              description:
                  'Have access to the invested youve made on investwise',
              press: () => Get.toNamed('/profile')),
          GridCard(
              color: MyTheme.lemon,
              icon: "assets/icons/Chat bubble Icon.svg",
              text: 'Help Desk',
              description:
                  'Incase there is any issue you can kindly reach out to us up',
              press: null),
          GridCard(
              color: MyTheme.purple,
              icon: "assets/icons/Question mark.svg",
              text: 'About Investwise',
              description: 'You can learn more about investwise',
              press: null),
        ],
      ),
    );
  }
}
