import 'package:flutter/material.dart';
import 'package:qrcode_reader/qrcode_reader.dart';
import 'package:device_info/device_info.dart';
import '../widgets/clue_item.dart';
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
          child: Column(
            children: <Widget>[
              ClueItem(
                clueNum: clueNum,
              ),
              Center(
                child: Text(barcode),
              ),
              Center(
                child: Text(score.toString()),
              ),
            ],
          ),
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
                child: Icon(Icons.lightbulb_outline),
                heroTag: 1,
                tooltip: 'Hint',
                onPressed: () {
                  if (!clues[clueNum].hintViewed) {
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
                                  setState(() {
                                    score -= penalty;
                                  });
                                  Navigator.of(context).pop();
                                  showHint(context);
                                },
                              ),
                            ],
                          );
                        });
                  } else {
                    showHint(context);
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
              if (!clues[currentClue].textToRead) {
                clueSolveOptions(context);
              } else
                solveClue(context);
            },
          ),
        ],
      ),
    );
  }

  showHint(context) {
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

  solveClue(context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Enter Solution"),
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
    if (clues[currentClue].code == barcode) {
      clues[currentClue].incomplete = false;
    } else {
      score -= 0.5;
    }
  }

  scanWithQR(context) async {
    String code;

    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
    if (androidInfo.version.sdkInt >= 23) {
      code = await new QRCodeReader().scan();
      debugPrint(code);
      if (code != null) calcScore(code);
    } else {
      clueSolveOptions(context,
          message:
              "QR Reader Unavailable in this Android Version, Consult nearby OC for Assistance!");
    }

    return code;
  }

  clueSolveOptions(context, {message = "Enter Text or Scan with QR"}) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(message),
            content: Container(
              height: 100,
              child: Column(
                children: <Widget>[
                  FlatButton(
                    child: new Text('SCAN WITH QR'),
                    onPressed: () {
                      Navigator.of(context).pop();
                      scanWithQR(context);
                    },
                  ),
                  TextField(
                    controller: _textFieldController,
                    decoration: InputDecoration(hintText: "Enter Here"),
                  ),
                ],
              ),
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
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        });
  }

  scanWithText(textCode) {
    calcScore(textCode);
  }
}
