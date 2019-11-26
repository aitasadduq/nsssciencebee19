import 'package:flutter/material.dart';
import '../screens/scirun_main_screen.dart';
import '../data.dart';

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
    Navigator.of(ctx).pushNamed(ScirunMainScreen.routeName);
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
