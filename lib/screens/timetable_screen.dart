import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:nss_sciencebee_19/models/schedule.dart';

class TimetableScreen extends StatefulWidget {
  @override
  _TimetableScreenState createState() => _TimetableScreenState();
}

class _TimetableScreenState extends State<TimetableScreen> {
  var _onScheduleAddedSubscription;
  final FirebaseDatabase _database = FirebaseDatabase.instance;
  Query _newsQuery;

  List<Schedule> _schedulesList = new List();

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  void dispose() {
    _onScheduleAddedSubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 800,
        child: _schedulesList.length > 0
            ? ListView.builder(
                itemCount: _schedulesList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: Column(
                      children: <Widget>[
                        Text(_schedulesList[index].name),
                        Text(_schedulesList[index].date),
                        Text(_schedulesList[index].startTime),
                        Text(_schedulesList[index].endTime),
                      ],
                    ),
                  );
                })
            : Text('No timetable currently available'),
      ),
    );
  }

  void getData() {
    _newsQuery = _database.reference().child('timetable');
    _onScheduleAddedSubscription =
        _newsQuery.onChildAdded.listen(_onEntryAdded);
  }

  _onEntryAdded(Event event) {
    setState(() {
      String name = event.snapshot.value['name'];
      String date = event.snapshot.value['date'];
      String startTime = event.snapshot.value['startTime'];
      String endTime = event.snapshot.value['endTime'];
      _schedulesList.add(Schedule(name, date, startTime, endTime));
    });
  }
}
