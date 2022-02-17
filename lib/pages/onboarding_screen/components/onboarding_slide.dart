import 'package:flutter/cupertino.dart';
import 'package:investwise/utils/sizeconfig.dart';
import 'package:investwise/utils/styles.dart';

class SplashContent extends StatelessWidget {
  const SplashContent(
      {Key? key, required this.title, required this.image, required this.desc})
      : super(key: key);
  final String title, image, desc;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Image.asset(
              image,
              height: getProportionateScreenHeight(250),
              width: getProportionateScreenWidth(300),
            ),
          ),
          const SizedBox(height: 30.0),
          Text(
            title,
            style: kTitleStyle,
          ),
          const SizedBox(height: 15.0),
          Text(
            desc,
            style: kSubtitleStyle,
          ),
        ],
      ),
    );
  }
}
