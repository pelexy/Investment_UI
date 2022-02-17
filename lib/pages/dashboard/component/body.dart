import 'package:flutter/material.dart';
import 'package:investwise/pages/dashboard/component/projects_vertical.dart';
import 'package:investwise/utils/sizeconfig.dart';

import 'finance_widget.dart';
import 'header.dart';
import 'menu.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      child: Column(
        children: [
          SizedBox(height: getProportionateScreenHeight(20)),
          const DashboardHeader(),
          SizedBox(height: getProportionateScreenWidth(10)),
          const FinanceWidget(
            amount: 20000,
          ),
          // const SummaryCard(
          //   amount: 1000000,
          // ),
          Menu(),

          ProjectVertical()
        ],
      ),
    ));
  }
}
