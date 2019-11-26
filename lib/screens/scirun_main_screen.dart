import 'package:flutter/material.dart';
import 'clues_history_screen.dart';
//import 'package:qrcode_reader/qrcode_reader.dart';
import 'package:device_info/device_info.dart';
import 'package:qrcode_reader/qrcode_reader.dart';
import '../widgets/nust_map.dart';
import 'dart:async';
import '../widgets/clue_item.dart';
import '../data.dart';

class ScirunMainScreen extends StatefulWidget {
  static String routeName = '/scirun';

  @override
  _ScirunMainScreenState createState() => _ScirunMainScreenState();
}

class _ScirunMainScreenState extends State<ScirunMainScreen> {

  final double diameter = 80;
  String barcode = '';
  int clueNum = currentClue;
  int penalty = 3;
  TextEditingController _textFieldController = TextEditingController();

  void updateClue() {
    setState(() {
      clueNum = currentClue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SciRun'),
      ),
      body: Container(
        padding: EdgeInsets.all(25),
//        height: double.infinity,
//        width: double.infinity,
        child: Center(
          child: clueNum < 5
              ? Column(
                  children: <Widget>[
                    ClueItem(
                      this.updateClue,
                      clueNum: clueNum,
                    ),
                    Center(
                      child: Text(barcode),
                    ),
                    Center(
                      child: Text(score.toString()),
                    ),
                    Container(
                      height: 500,
                      child: NustMap(),),
                  ],
                )
              : Text('You have solved all the clues!'),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            height: diameter,
            width: diameter,
            child: FittedBox(
              child: FloatingActionButton.extended(
                icon: Icon(Icons.history),
                label: Text('History'),
                heroTag: 0,
                tooltip: 'Solved Clues History',
                onPressed: () => Navigator.of(context)
                    .pushNamed(CluesHistoryScreen.routeName),
              ),
            ),
          ),
//          SizedBox(
//            height: 1,
//          ),
          Container(
            height: diameter,
            width: diameter,
            child: FittedBox(
              child: FloatingActionButton.extended(
                icon: Icon(Icons.lightbulb_outline),
                label: Text('Hint'),
                heroTag: 1,
                tooltip: 'Hint',
                onPressed: () {
                  if (clueNum < 5) {
                    if (!clues[clueNum].hintViewed) {
                      bool continued = false;
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Use Hint?'),
                              content: Text(
                                  'Using the hint will reduce the points you earn by solving this clue. Do you want to continue?'),
                              actions: <Widget>[
                                FlatButton(
                                  child: Text('Cancel'),
                                  onPressed: () => Navigator.of(context).pop(),
                                ),
                                FlatButton(
                                  child: Text('Continue'),
                                  onPressed: () {
                                    clues[clueNum].hintViewed = true;
                                    score -= penalty;
                                    continued = true;
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            );
                          });
                      if (continued) {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text('Hint'),
                                content: Text(clues[clueNum].hint),
                                actions: <Widget>[
                                  FlatButton(
                                    child: Text('OK'),
                                    onPressed: () =>
                                        Navigator.of(context).pop(),
                                  ),
                                ],
                              );
                            });
                      }
                    } else {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Hint'),
                              content: Text(clues[clueNum].hint),
                              actions: <Widget>[
                                FlatButton(
                                  child: Text('OK'),
                                  onPressed: () => Navigator.of(context).pop(),
                                ),
                              ],
                            );
                          });
                    }
                  }
                },
              ),
            ),
          ),
//          SizedBox(
//            height: 1,
//          ),
          Container(
            height: diameter,
            width: diameter,
            child: FittedBox(
              child: FloatingActionButton.extended(
                icon: Icon(Icons.skip_next),
                label: Text('Skip'),
                heroTag: 3,
                tooltip: 'Skip to Next Clue',
                onPressed: () {
                  if (clueNum < 5) {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Skip Clue?'),
                          content: Text(
                              'Skipping the clue will earn you 0 points for this clue. Do you want to continue?'),
                          actions: <Widget>[
                            FlatButton(
                              child: Text('Cancel'),
                              onPressed: () => Navigator.of(context).pop(),
                            ),
                            FlatButton(
                              child: Text('Continue'),
                              onPressed: () {
                                if (clueNum == solvedClue) {
                                  solvedClues.add(clues[clueNum]);
                                  solvedClue += 1;
                                }
                                clues[clueNum].incomplete = false;
                                solvedClues[clueNum].incomplete = false;
                                currentClue += 1;
                                setState(() {
                                  clueNum = currentClue;
                                });
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      },
                    );
                  }
                },
              ),
            ),
          ),
//          SizedBox(
//            height: 1,
//          ),
          FloatingActionButton.extended(
            icon: Icon(Icons.settings_overscan),
            label: Text('Scan QR'),
            heroTag: 2,
            tooltip: 'Scan QR Code',
            onPressed: () {
              if (currentClue == solvedClue && clueNum < 5) {
                if (!clues[currentClue].textToRead) {
                  scanWithQR(context);
                } else
                  builder(context, "Solve Clue");
              }
            },
          ),
        ],
      ),
    );
  }

  builder(context, message) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(message),
            content: TextField(
              controller: _textFieldController,
              decoration: InputDecoration(hintText: "Enter Here"),
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
                  scanWithText(_textFieldController.text);
                  debugPrint(barcode);
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        });
  }

  calcScore(code) {
    setState(() {
      barcode = code;
    });
    if (clues[solvedClue].code == barcode) {
      solvedClues.add(clues[solvedClue]);
      solvedClue += 1;
      setState(() {
        clueNum = currentClue;
      });
    } else {
      score -= 0.5;
    }
  }

  scanWithQR(context) async {
    String code;

    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
    if (androidInfo.version.sdkInt >= 23) {
      //code = await new QRCodeReader().scan();
      code = null;
      if(code != null)
        calcScore(code);
    } else {
      builder(context, "QR Reader Unavailable in this Android Version, Consult nearby OC for Assistance!");
    }

    return code;
  }

  scanWithText(textCode) {
    calcScore(textCode);
  }
}
