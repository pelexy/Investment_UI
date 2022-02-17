import 'package:flutter/material.dart';

import 'package:intl/intl.dart';
import 'package:investwise/utils/sizeconfig.dart';

class FinanceWidget extends StatelessWidget {
  const FinanceWidget({
    Key? key,
    this.amount,
  }) : super(key: key);
  final double? amount;

  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_new
    final value = new NumberFormat("#,##0.00", "en_US");

    return Container(
        width: SizeConfig.screenWidth,
        child: Row(
            // crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(20)),
                  child: Container(
                    height: getProportionateScreenWidth(46),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('₦ ${value.format(amount)}'),
                        const Text(
                          'Total Amount Invested',
                          style: TextStyle(fontSize: 10),
                        )
                      ],
                    ),
                  )),
              Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(20)),
                  child: Container(
                    height: getProportionateScreenWidth(46),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(" ₦ ${value.format(amount)}"),
                        const Text(
                          'Total Amount Earned',
                          style: TextStyle(fontSize: 10),
                        )
                      ],
                    ),
                  )),
            ]));
  }
}
