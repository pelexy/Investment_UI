import 'package:flutter/material.dart';
import 'package:investwise/components/profile_list.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          //const ProfilePic(),
          const SizedBox(height: 20),
          CardList(
            text: "My Account",
            icon: "assets/icons/User Icon.svg",
            press: () => {},
          ),
          CardList(
            text: "Notifications",
            icon: "assets/icons/Bell.svg",
            press: () {},
          ),
          CardList(
            text: "Settings",
            icon: "assets/icons/Settings.svg",
            press: () {},
          ),
          CardList(
            text: "Help Center",
            icon: "assets/icons/Question mark.svg",
            press: () {},
          ),
          CardList(
            text: "Log Out",
            icon: "assets/icons/Log out.svg",
            press: () {},
          ),
        ],
      ),
    );
  }
}
