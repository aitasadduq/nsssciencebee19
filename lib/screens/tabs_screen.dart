import 'package:flutter/material.dart';
import 'package:nss_sciencebee_19/data.dart';
import 'live_feed_screen.dart';
import 'timetable_screen.dart';
import 'map_screen.dart';
import '../widgets/main_drawer.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> with WidgetsBindingObserver {
  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused || state == AppLifecycleState.suspending) {
      print('APPLICATION IS PAUSING!');
      writeToFile();
    }
    super.didChangeAppLifecycleState(state);
  }

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
        drawer: MainDrawer(),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
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
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
