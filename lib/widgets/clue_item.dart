import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nss_sciencebee_19/data.dart';
import 'dart:core';

import 'package:nss_sciencebee_19/screens/scirun_main_screen.dart';

class ClueItem extends StatefulWidget {
  final int clueNum;

  ClueItem({@required this.clueNum});

  @override
  _ClueItemState createState() => _ClueItemState();
}

class _ClueItemState extends State<ClueItem> {

  TextEditingController _codeController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    bool incomplete = clues[clueSet][widget.clueNum].incomplete;
    if (incomplete == null)
      incomplete = true;
    bool scored = clues[clueSet][widget.clueNum].scored;
    if (scored == null)
      scored = false;
    return InkWell(
      onTap: () {
        currentClue = widget.clueNum;
        if (incomplete == true){
          Navigator.of(context)
                    .pushNamed(ScirunMainScreen.routeName);
        } else if(scored == false) {
          debugPrint(currentClue.toString() + " " + widget.clueNum.toString());
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return Scaffold(
                  appBar: AppBar(
                    title: Text('Enter Code'),
                  ),
                  body: Center(
                    child: Container(
                      padding: EdgeInsets.all(25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          TextField(
                            decoration:
                                InputDecoration(labelText: 'Score Code'),
                            controller: _codeController,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          RaisedButton(
                            child: Text('Submit Code'),
                            onPressed: () {
                              final codeWord = _codeController.text;
                              switch (codeWord.toLowerCase()) {
                                case 'zombie':
                                  score += 5;
                                  clues[clueSet][currentClue].scored = true;
                                  Navigator.of(context).pop();
                                  break;
                                case 'vampire':
                                  score += 8;
                                  clues[clueSet][currentClue].scored = true;
                                  Navigator.of(context).pop();
                                  break;
                                case 'frankenstein':
                                  score += 10;
                                  clues[clueSet][currentClue].scored = true;
                                  Navigator.of(context).pop();
                                  break;
                              }
                              setState(() {
                                scored = clues[clueSet][currentClue].scored;
                              });
                              writeToFile();
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              });
        }
      },
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(clues[clueSet][widget.clueNum].detail,
            textAlign: TextAlign.left,),
            incomplete 
            ? Text("INCOMPLETE", textAlign: TextAlign.left,)
            : scored 
            ? Text("SCORED", textAlign: TextAlign.left,)
            : Text("NEEDS SCORING", textAlign: TextAlign.left,)
          ],
        ),
      ),
    );
  }
}
