import 'package:flutter/material.dart';
import '../screens/scirun_main_screen.dart';

class EntryCode extends StatelessWidget {
  const EntryCode();

  openSciRun(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(ScirunMainScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        onPressed: openSciRun(context),
        child: Text('Open Sc-Run'),
      ),
    );
  }
}
