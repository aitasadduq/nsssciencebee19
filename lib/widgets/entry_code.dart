import 'package:flutter/material.dart';
import 'package:nss_sciencebee_19/screens/clues_list_screen.dart';
import '../data.dart';
import 'dart:math';

class EntryCode extends StatefulWidget {
  _EntryCodeState createState() => _EntryCodeState();
}

class _EntryCodeState extends State<EntryCode> {
  final codeController = TextEditingController();
  final teamController = TextEditingController();

  @override
  void dispose() {
    codeController.dispose();
    teamController.dispose();
    super.dispose();
  }

  openSciRun(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(CluesListScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return unlocked
        ? RaisedButton(
            child: Text("Go To App"),
            textColor: Colors.white,
            color: Colors.blue,
            onPressed: () {
              openSciRun(context);
            })
        : Container(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(hintText: 'Enter Code'),
                    controller: codeController,
                  ),
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(hintText: 'Enter Team Name'),
                    controller: teamController,
                  ),
                ),
                RaisedButton(
                  child: Text("Submit"),
                  textColor: Colors.white,
                  color: Colors.blue,
                  onPressed: () {
                    debugPrint(codeController.text + " " + teamController.text);
                    if (codeController.text == validCode) {
                      if (new Random().nextDouble() > 0.5) clueSet = 1;
                      print('ClueSet: ' + clueSet.toString());
                      teamName = teamController.text;
                      unlocked = true;
                      openSciRun(context);
                    }
                  },
                ),
              ],
            ),
          );
  }
}
