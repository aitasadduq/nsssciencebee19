import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:barcode_scan/barcode_scan.dart';
import 'clues_history_screen.dart';
import 'dart:async';
import '../widgets/clue_item.dart';
import '../models/clue.dart';
import '../data.dart';

class ScirunMainScreen extends StatefulWidget {
  static String routeName = '/scirun';

  @override
  _ScirunMainScreenState createState() => _ScirunMainScreenState();
}

class _ScirunMainScreenState extends State<ScirunMainScreen> {
  final double diameter = 40;
  String barcode = '';
  int clueNum = currentClue;
  int penalty = 3;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
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
                      clueNum: clueNum,
                    ),
                    Center(
                      child: Text(score.toString()),
                    ),
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
              child: FloatingActionButton(
                child: Icon(Icons.history),
                heroTag: 0,
                tooltip: 'Solved Clues History',
                onPressed: () => Navigator.of(context)
                    .pushNamed(CluesHistoryScreen.routeName),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: diameter,
            width: diameter,
            child: FittedBox(
              child: FloatingActionButton(
                child: Icon(Icons.lightbulb_outline),
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
          SizedBox(
            height: 20,
          ),
          Container(
            height: diameter,
            width: diameter,
            child: FittedBox(
              child: FloatingActionButton(
                child: Icon(Icons.skip_next),
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
          SizedBox(
            height: 20,
          ),
          FloatingActionButton(
            child: Icon(Icons.settings_overscan),
            heroTag: 2,
            tooltip: 'Scan QR Code',
            onPressed: () {
              if (clueNum < 5) {
                scan();
              }
            },
          ),
        ],
      ),
    );
  }

  Future scan() async {
    try {
      String barcode = await BarcodeScanner.scan();
//      setState(() {
//        this.barcode = barcode;
//      });
      if (currentClue == solvedClue && clues[solvedClue].code == barcode) {
        solvedClues.add(clues[solvedClue]);
        solvedClue += 1;
      }
//      setState(() {
//        clueNum = currentClue;
//      });
    } on PlatformException catch (e) {
      if (e.code == BarcodeScanner.CameraAccessDenied) {
        setState(() {
          this.barcode = 'Camera permission needed!';
        });
      } else {
        setState(() => this.barcode = 'Unknown error: $e');
      }
    } on FormatException {
      setState(() => this.barcode = 'User pressed back before scanning.');
    } catch (e) {
      setState(() => this.barcode = 'Unknown error: $e');
    }
  }
}
