import 'package:flutter/material.dart';

import 'component/body.dart';

class Profile extends StatelessWidget {
  static String routeName = "/profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        //automaticallyImplyLeading: false,
      ),
      body: Body(),
    );
  }
}
