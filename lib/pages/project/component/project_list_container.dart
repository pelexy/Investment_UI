import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:investwise/utils/sizeconfig.dart';

class ProjectContainer extends StatelessWidget {
  const ProjectContainer({
    Key? key,
    required this.title,
    required this.type,
    required this.amount,
  }) : super(key: key);

  final String title, type;
  final double amount;

  @override
  Widget build(BuildContext context) {
    final value = NumberFormat("#,##0.00", "en_US");
    return Column(
      children: <Widget>[
        Container(
            height: getProportionateScreenHeight(140),
            width: double.infinity,
            margin: EdgeInsets.all(getProportionateScreenWidth(5)),
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(10),
              vertical: getProportionateScreenWidth(10),
            ),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(
                height: 10,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                SizedBox(
                  width: getProportionateScreenWidth(100),
                  height: getProportionateScreenWidth(100),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Stack(
                      children: [
                        Image.network(
                          'https://media-cdn.tripadvisor.com/media/photo-s/1c/de/fb/85/exterior.jpg',
                          fit: BoxFit.cover,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                const Color(0xFF343434).withOpacity(0.9),
                                const Color(0xFF343434).withOpacity(0.16),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Walex Bill Mall",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 5),
                    const Text("Amount Expectated: "),
                    Text('₦ ${value.format(amount)}'),
                  ],
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                      Text(
                        'view',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  width: getProportionateScreenWidth(50),
                  height: getProportionateScreenHeight(100),
                  decoration: const BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                  ),
                )
              ])
            ])),
      ],
    );
  }
}
