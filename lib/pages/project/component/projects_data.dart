import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:investwise/pages/project/component/project_card.dart';
import 'package:investwise/pages/project/component/project_list_container.dart';

class ProjectData extends StatelessWidget {
  List<Map<String, dynamic>> projects = [
    {"type": "Walex bix mall", "title": "TypeOf", "amount": 12000000.00},
    {"type": "TypeOf", "title": "TypeOf", "amount": 12000000.00},
    {"type": "TypeOf", "title": "TypeOf", "amount": 12000000.00},
    {"type": "TypeOf", "title": "TypeOf", "amount": 12000000.00},
    {"type": "TypeOf", "title": "TypeOf", "amount": 12000000.00},
    {"type": "TypeOf", "title": "TypeOf", "amount": 12000000.00},
    {"type": "TypeOf", "title": "TypeOf", "amount": 12000000.00},
  ];

  ProjectData({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20),
        height: MediaQuery.of(context).size.height / 3,
        child: ListView.builder(
            itemCount: projects.length,
            itemBuilder: (context, index) {
              return ProjectContainer(
                amount: projects[index]['amount'],
                type: projects[index]['type'],
                title: projects[index]['title'],
              );
            }));
  }
}
