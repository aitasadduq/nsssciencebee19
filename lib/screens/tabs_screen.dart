import 'package:flutter/material.dart';
import 'live_feed_screen.dart';
import 'timetable_screen.dart';
import 'map_screen.dart';

class TabsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Science Bee \'19'),
          // bottom: TabBar(tabs: <Widget>[
          //   Tab(text: 'Live Feed',),
          //   Tab(text: 'Timetable',),
          //   Tab(text: 'Map',),
          // ],),
        ),
        body: TabBarView(
          children: <Widget>[
            LiveFeedScreen(),
            TimetableScreen(),
            MapScreen(),
          ],
        ),
        bottomNavigationBar: Container(
          child: TabBar(
            tabs: <Widget>[
              Tab(
                text: 'Live Feed',
              ),
              Tab(
                text: 'Timetable',
              ),
              Tab(
                text: 'Map',
              ),
            ],
            indicatorColor: Colors.white,
          ),
          color: Colors.blue,
        ),
      ),
    );
  }
}
