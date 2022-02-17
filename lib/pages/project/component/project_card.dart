import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:intl/intl.dart';
import 'package:investwise/utils/sizeconfig.dart';

class ProjectCardWidget extends StatelessWidget {
  const ProjectCardWidget(
      {Key? key,
      this.name,
      required this.date,
      required this.amount,
      required this.address,
      this.action,
      required this.paymentmethod})
      : super(key: key);
  final String? name;
  final DateTime date;
  final double amount;
  final String address;
  final String paymentmethod;
  final VoidCallback? action;

  @override
  Widget build(BuildContext context) {
    final value = NumberFormat("#,##0.00", "en_US");
    return SafeArea(
        child: InkWell(
            onTap: action,
            child: Container(
                height: getProportionateScreenHeight(150),
                width: double.infinity,
                margin: EdgeInsets.all(getProportionateScreenWidth(10)),
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20),
                  vertical: getProportionateScreenWidth(15),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                        'https://media-cdn.tripadvisor.com/media/photo-s/1c/de/fb/85/exterior.jpg',
                      ),
                      fit: BoxFit.cover),
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF000000).withOpacity(0.9),
                      Color(0xFF343434).withOpacity(0.16),
                    ],
                  ),
                ),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Name: $name",
                          style: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold)),
                      Text(DateFormat('yyyy-MM-dd').format(date),
                          style: const TextStyle(fontSize: 10)),
                    ],
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(10),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Limit: 100000-1900000",
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      Text('8900/Eth')
                    ],
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(13),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text.rich(
                        TextSpan(
                          style: const TextStyle(color: Colors.orange),
                          children: [
                            const TextSpan(
                              text: "2 trades ",
                            ),
                          ],
                        ),
                      ),
                      Text.rich(
                        TextSpan(
                          style: const TextStyle(color: Colors.black),
                          children: [
                            TextSpan(
                              text: " 90% reliable",
                              style: const TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ]))));
  }
}
