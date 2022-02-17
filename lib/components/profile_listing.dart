import 'package:flutter/material.dart';

import 'package:investwise/utils/sizeconfig.dart';
import 'package:investwise/theme.dart';

class ProfileListItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final bool hasNavigation;

  const ProfileListItem({
    required Key key,
    required this.icon,
    required this.text,
    this.hasNavigation = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(30),
      margin: EdgeInsets.symmetric(
        horizontal: 4,
      ).copyWith(
        bottom: 2,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 2,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
        color: Theme.of(context).backgroundColor,
      ),
      child: Row(
        children: <Widget>[
          Icon(
            this.icon,
            size: 2.5,
          ),
          SizedBox(width: 1.5),
          Text(
            this.text,
          ),
          Spacer(),
          if (this.hasNavigation)
            Icon(
              Icons.arrow_back,
              size: 2.5,
            ),
        ],
      ),
    );
  }
}
