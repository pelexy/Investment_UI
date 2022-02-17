import 'package:flutter/material.dart';
import 'package:investwise/utils/sizeconfig.dart';

class ButtonDefault extends StatelessWidget {
  const ButtonDefault(
      {Key? key,
      this.text,
      this.press,
      this.background,
      this.color,
      required this.bordercolor})
      : super(key: key);
  final String? text;
  final Function? press;
  final Color? background;
  final Color? color;
  final Color bordercolor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(56),
      child: TextButton(
        style: TextButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          side: BorderSide(
              color: bordercolor, width: 1, style: BorderStyle.solid),
          primary: bordercolor,
          backgroundColor: background,
        ),
        onPressed: press as void Function()?,
        child: Text(
          text!,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(15),
            color: color,
          ),
        ),
      ),
    );
  }
}
