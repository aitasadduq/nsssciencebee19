import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:nss_sciencebee_19/widgets/nust_map.dart';
import '../widgets/clue_item.dart';
import '../data.dart';

class CluesListScreen extends StatefulWidget {
  static String routeName = '/clues-list';

  @override
  _CluesListScreenState createState() => _CluesListScreenState();
}

class _CluesListScreenState extends State<CluesListScreen> {
  TextEditingController _textFieldController = TextEditingController();
  final FirebaseDatabase _database = FirebaseDatabase.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Clues List'),
        ),
        body: Container(
          padding: EdgeInsets.all(25),
          child: Column(
            children: clues[clueSet]
                .map((clueData) => ClueItem(
                      clueNum: clueData.id,
                    ))
                .toList(),
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FloatingActionButton.extended(
              heroTag: 0,
              label: Text('NUST Map'),
              icon: Icon(Icons.map),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('NUST Map'),
                        content: NustMap(),
                        actions: <Widget>[
                          new FlatButton(
                              onPressed: () => Navigator.of(context).pop(),
                              child: Text('OK')),
                        ],
                      );
                    });
              },
            ),
            SizedBox(
              height: 20,
            ),
            FloatingActionButton.extended(
              heroTag: 1,
              label: Text('End SciRun'),
              icon: Icon(Icons.stop),
              onPressed: () {
                endSciRun(context);
              },
            ),
          ],
        ));
  }

  endSciRun(context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('End SciRun? You won\'t be able to return.'),
            content: TextField(
              controller: _textFieldController,
              decoration: InputDecoration(hintText: 'Enter Code Here'),
            ),
            actions: <Widget>[
              new FlatButton(
                child: new Text('CANCEL'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              new FlatButton(
                child: new Text('SUBMIT'),
                onPressed: () {
                  if (_textFieldController.text == endCode) {
                    finished = true;
                    _database.reference().child('scirun').push().set({
                      'score': score,
                      'teamName': teamName,
                    });
                    Navigator.of(context).pop();
                    Navigator.of(context).pop();
                  }
                },
              ),
            ],
          );
        });
  }
}
