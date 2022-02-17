import 'package:flutter/material.dart';
import 'package:investwise/components/icon_with_counter.dart';
import 'package:investwise/theme.dart';
import 'package:investwise/utils/sizeconfig.dart';

class DashboardHeader extends StatelessWidget {
  const DashboardHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //SearchField(),
          Row(
            children: [
              CircleAvatar(
                  radius: 30.0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.network(
                      'https://media-exp1.licdn.com/dms/image/C5603AQGkjLfHGLWXxw/profile-displayphoto-shrink_100_100/0/1630618742294?e=1639612800&v=beta&t=bRZd3ac7sNf9UnCv--_AkTygpf6AIsEIbrEV96j2tGk',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  )),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome Back!",
                    style: TextStyle(fontSize: 20, color: MyTheme.primaryColor),
                  ),
                  Text(
                    "Pelemo Olorunshola",
                    style: TextStyle(fontSize: 10, color: MyTheme.primaryColor),
                  )
                ],
              )
            ],
          ),

          IconBtnWithCounter(
            svgSrc: "assets/icons/Bell.svg",
            numOfitem: 3,
            press: () {},
          ),
        ],
      ),
    );
  }
}
