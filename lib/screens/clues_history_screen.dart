import 'package:flutter/material.dart';
import '../widgets/clue_item.dart';
import '../data.dart';

class CluesHistoryScreen extends StatelessWidget {
  static String routeName = '/clues-history';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Solved Clues'),
      ),
      body: Container(
        padding: EdgeInsets.all(25),
        child: solvedClue == 0
            ? Center(
                child: Text('Your solved clues will appear here'),
              )
            : Column(
                children: solvedClues
                    .map((clueData) => ClueItem(null,
                          clueNum: clueData.id,
                        ))
                    .toList(),
              ),
      ),
    );
  }
}
