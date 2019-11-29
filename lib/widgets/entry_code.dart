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
                      var randomizer = new Random().nextDouble();
                      if (randomizer > 0.83) {
                        clueSet = 5;
                      } else if (randomizer > 0.67) {
                        clueSet = 4;
                      } else if (randomizer > 0.5) {
                        clueSet = 3;
                      } else if (randomizer > 0.33) {
                        clueSet = 2;
                      } else if (randomizer > 0.16) {
                        clueSet = 1;
                      }
                      print('ClueSet: ' + clueSet.toString());
                      teamName = teamController.text;
                      unlocked = true;
                      writeToFile();
                      openSciRun(context);
                    }
                  },
                ),
              ],
            ),
          );
  }
}
