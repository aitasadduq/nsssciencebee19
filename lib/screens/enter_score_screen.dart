import 'package:flutter/material.dart';
import 'scirun_main_screen.dart';
import '../data.dart';

class EnterScoreScreen extends StatefulWidget {
  static String routeName = '/enter-code';

  @override
  _EnterScoreScreenState createState() => _EnterScoreScreenState();
}

class _EnterScoreScreenState extends State<EnterScoreScreen> {
  final _codeController = TextEditingController();

  void _completeClue() {
    final codeWord = _codeController.text;
    switch(codeWord) {
      case 'Zombie':
        score += 5;
        _goBack();
        break;
      case 'Vampire':
        score += 8;
        _goBack();
        break;
      case 'Frankenstein':
        score += 10;
        _goBack();
        break;
    }
  }

  void _goBack() {
    clues[currentClue].incomplete = false;
    currentClue += 1;
    Navigator.of(context).pushReplacementNamed(ScirunMainScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
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
//              Text('Enter code here'),
              TextField(
                decoration: InputDecoration(labelText: 'Score Code'),
                controller: _codeController,
              ),
              SizedBox(height: 20,),
              RaisedButton(
                child: Text('Submit Code'),
                onPressed: _completeClue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
