import 'package:flutter/material.dart';
import '../widgets/clue_item.dart';

class ScirunMainScreen extends StatelessWidget {
  static String routeName = '/scirun';
  final double diameter = 45;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SciRun'),
      ),
      body: Container(
//        height: double.infinity,
//        width: double.infinity,
        child: Center(
          child: Column(
            children: <Widget>[
              ClueItem(),
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
                child: Icon(Icons.history),
                heroTag: 0,
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
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          FloatingActionButton(
            child: Icon(Icons.settings_overscan),
            heroTag: 2,
          ),
        ],
      ),
    );
  }
}
