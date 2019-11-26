import 'package:flutter/material.dart';
import 'package:nss_sciencebee_19/data.dart';
import 'dart:core';

class ClueItem extends StatefulWidget {
  final int clueNum;

  final Function updateClue;

  ClueItem(this.updateClue, {@required this.clueNum});

  @override
  _ClueItemState createState() => _ClueItemState();
}

class _ClueItemState extends State<ClueItem> {

  TextEditingController _codeController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (solvedClue == widget.clueNum + 1 &&
            clues[widget.clueNum].incomplete == true) {
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
                              switch (codeWord) {
                                case 'Zombie':
                                  score += 5;
                                  clues[currentClue].incomplete = false;
                                  currentClue += 1;
                                  this.widget.updateClue();
                                  Navigator.of(context).pop();
                                  break;
                                case 'Vampire':
                                  score += 8;
                                  clues[currentClue].incomplete = false;
                                  currentClue += 1;
                                  this.widget.updateClue();
                                  Navigator.of(context).pop();
                                  break;
                                case 'Frankenstein':
                                  score += 10;
                                  clues[currentClue].incomplete = false;
                                  currentClue += 1;
                                  this.widget.updateClue();
                                  Navigator.of(context).pop();
                                  break;
                              }
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
        child: Center(
          child: Text(clues[widget.clueNum].detail),
        ),
      ),
    );
  }
}
