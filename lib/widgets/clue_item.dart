import 'package:flutter/material.dart';
import 'package:nss_sciencebee_19/data.dart';
import '../screens/enter_score_screen.dart';
import 'dart:core';

class ClueItem extends StatefulWidget {
  final int clueNum;

  ClueItem({@required this.clueNum});

  @override
  _ClueItemState createState() => _ClueItemState();
}

class _ClueItemState extends State<ClueItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (solvedClue == widget.clueNum + 1 && clues[widget.clueNum].incomplete == true) {
          Navigator.of(context).pushNamed(EnterScoreScreen.routeName);
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
