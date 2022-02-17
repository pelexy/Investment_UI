import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:investwise/utils/sizeconfig.dart';

import '../theme.dart';

class GridCard extends StatelessWidget {
  const GridCard({
    Key? key,
    required this.icon,
    required this.text,
    required this.description,
    required this.color,
    this.numOfitem = 0,
    this.press,
  }) : super(key: key);

  final String? icon, text, description;
  final int numOfitem;
  final Color color;
  final GestureTapCallback? press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: getProportionateScreenWidth(55),
        child: Column(
          children: [
            Stack(clipBehavior: Clip.none, children: [
              Container(
                padding: EdgeInsets.all(getProportionateScreenWidth(15)),
                height: getProportionateScreenHeight(130),
                width: getProportionateScreenWidth(170),
                decoration: BoxDecoration(
                  color: color.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(children: [
                  Container(
                    padding: EdgeInsets.all(getProportionateScreenWidth(12)),
                    height: getProportionateScreenWidth(46),
                    width: getProportionateScreenWidth(46),
                    decoration: BoxDecoration(
                      color: color.withOpacity(0.1),
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset(
                      icon!,
                      color: color,
                    ),
                  ),
                  Text(text!,
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(color: color, fontWeight: FontWeight.bold)),
                  Text(
                    description!,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 8),
                  )
                ]),
              ),
              if (numOfitem != 0)
                Positioned(
                  top: -3,
                  right: 0,
                  child: Container(
                    height: getProportionateScreenWidth(16),
                    width: getProportionateScreenWidth(16),
                    decoration: BoxDecoration(
                      color: Color(0xFFFF4848),
                      shape: BoxShape.circle,
                      border: Border.all(width: 1.5, color: Colors.white),
                    ),
                    child: Center(
                      child: Text(
                        "$numOfitem",
                        style: TextStyle(
                          fontSize: getProportionateScreenWidth(10),
                          height: 1,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                )
            ]),
            SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}
