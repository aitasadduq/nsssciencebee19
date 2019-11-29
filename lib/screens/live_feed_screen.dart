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

  List<NewsItem> _newsList = new List();

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
        height: 700,
        child: _newsList.length > 0
            ? ListView.builder(
                itemCount: _newsList.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(_newsList[index].content),
                    subtitle: Text(_newsList[index].timestamp),
                  );
                },
              )
            : Text('No updates yet.'),
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

      switch (date) {
        case '29':
          time += ' - Friday';
          break;
        case '30':
          time += ' - Saturday';
          break;
        case '01':
          time += ' - Sunday';
          break;
      }
      var newsItem = NewsItem(content, time);
      _newsList.insert(0, newsItem);
    });
  }
}
