import 'package:flutter/material.dart';

class CluesHistoryScreen extends StatelessWidget {
  static String routeName = '/clues-history';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Solved Clues'),
      ),
      body: Center(
        child: Text('Solved Clues\' History'),
      ),
    );
  }
}
