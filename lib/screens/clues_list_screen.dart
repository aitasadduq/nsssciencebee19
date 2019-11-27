import 'package:flutter/material.dart';
import '../widgets/clue_item.dart';
import '../data.dart';

class CluesListScreen extends StatelessWidget {
  static String routeName = '/clues-list';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clues List'),
      ),
      body: Container(
        padding: EdgeInsets.all(25),
        child: Column(
          children: clues
              .map((clueData) => ClueItem(
                    clueNum: clueData.id,
                  ))
              .toList(),
        ),
      ),
    );
  }
}
