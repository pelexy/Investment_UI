import 'package:flutter/material.dart';
import 'package:investwise/pages/project/component/projects_data.dart';
import 'package:investwise/pages/project/index.dart';
import 'package:investwise/theme.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 1), // changes position of shadow
                    ),
                  ],
                ),
                padding: EdgeInsets.all(20),
                child: const TabBar(
                  tabs: [
                    Tab(
                      text: 'Projects',
                    ),
                    Tab(text: 'Favourites'),
                  ],
                )),
            Expanded(
              flex: 1,
              child: TabBarView(
                children: [
                  ProjectData(),
                  Icon(Icons.directions_transit),
                ],
              ),
            )
          ],
        )));
  }
}
