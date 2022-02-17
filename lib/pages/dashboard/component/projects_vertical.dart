import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:investwise/components/header_title_view_more.dart';
import 'package:investwise/utils/sizeconfig.dart';

class ProjectVertical extends StatelessWidget {
  List<Map<String, dynamic>> new_orders = [
    {
      "category": "Hotels",
      "numOfProjects": 10,
      "imgUrl":
          "https://media-cdn.tripadvisor.com/media/photo-s/1c/de/fb/85/exterior.jpg",
    },
    {
      "category": "School",
      "numOfProjects": 17,
      "imgUrl":
          "https://stayinformedgroup.com/wp-content/uploads/2021/08/best-boarding-schools-in-nigeria-1.jpg",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 3,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20)),
              child: SectionTitle(
                title: "Projects",
                press: () {},
              ),
            ),
            SizedBox(height: getProportionateScreenWidth(20)),
            Expanded(
              flex: 1,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: new_orders.length,
                itemBuilder: (context, index) => ProjectCategory(
                  category: new_orders[index]["category"],
                  imgUrl: new_orders[index]["imgUrl"],
                  numOfProjects: new_orders[index]["numOfProjects"],
                  press: () => Get.toNamed('/order_detail'),
                ),
              ),
            )
          ],
        ));
  }
}

class ProjectCategory extends StatelessWidget {
  const ProjectCategory({
    Key? key,
    required this.category,
    required this.imgUrl,
    required this.numOfProjects,
    required this.press,
  }) : super(key: key);

  final String category, imgUrl;
  final int numOfProjects;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: getProportionateScreenWidth(242),
          height: getProportionateScreenWidth(170),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Image.network(
                  imgUrl,
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF343434).withOpacity(0.9),
                        Color(0xFF343434).withOpacity(0.16),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(15.0),
                    vertical: getProportionateScreenWidth(10),
                  ),
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
                          text: "$category\n",
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(25),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                            text: "$numOfProjects Projects",
                            style: TextStyle(fontSize: 16))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
