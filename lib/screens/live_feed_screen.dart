import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:nss_sciencebee_19/models/news_item.dart';

class LiveFeedScreen extends StatefulWidget {
  @override
  _LiveFeedScreenState createState() => _LiveFeedScreenState();
}

class _LiveFeedScreenState extends State<LiveFeedScreen> {
  var _onNewsAddedSubscription;
  final FirebaseDatabase _database = FirebaseDatabase.instance;
  Query _newsQuery;

  List<NewsItem> _newsFridayList = new List();
  List<NewsItem> _newsSaturdayList = new List();
  List<NewsItem> _newsSundayList = new List();

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  void dispose() {
    _onNewsAddedSubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 800,
        child: Column(
          children: <Widget>[
            Text(
              'Sunday',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Container(
              height: 150,
              child: _newsSundayList.length > 0
                  ? ListView.builder(
                      itemCount: _newsSundayList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          title: Text(_newsSundayList[index].content),
                          subtitle: Text(_newsSundayList[index].timestamp),
                        );
                      },
                    )
                  : Text('No updates for Sunday yet.'),
            ),
            Text(
              'Saturday',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Container(
              height: 150,
              child: _newsSaturdayList.length > 0
                  ? ListView.builder(
                itemCount: _newsSaturdayList.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(_newsSaturdayList[index].content),
                    subtitle: Text(_newsSaturdayList[index].timestamp),
                  );
                },
              )
                  : Text('No updates for Saturday yet.'),
            ),
            Text(
              'Friday',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Container(
              height: 150,
              child: _newsFridayList.length > 0
                  ? ListView.builder(
                itemCount: _newsFridayList.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(_newsFridayList[index].content),
                    subtitle: Text(_newsFridayList[index].timestamp),
                  );
                },
              )
                  : Text('No updates for Friday yet.'),
            ),
          ],
        ),
      ),
    );
  }

  void getData() {
    _newsQuery = _database.reference().child('news');
    _onNewsAddedSubscription = _newsQuery.onChildAdded.listen(_onEntryAdded);
  }

  _onEntryAdded(Event event) {
    setState(() {
      String content = event.snapshot.value['content'];
      String timestamp = event.snapshot.value['timestamp'];
      String date = timestamp.substring(6, 8);
      String time = timestamp.substring(0, 5);
      String hours = time.substring(0, 2);
      String suffix = ' AM';
      int hour = int.parse(hours);
      if (hour >= 12) {
        suffix = ' PM';
        if (hour > 12) hour = hour - 12;
      }
      time = hour.toString() + time.substring(2, 5) + suffix;
      var newsItem = NewsItem(content, time);
      switch (date) {
        case '29':
          _newsFridayList.add(newsItem);
          break;
        case '30':
          _newsSaturdayList.add(newsItem);
          break;
        case '01':
          _newsSundayList.add(newsItem);
          break;
      }
    });
  }
}
