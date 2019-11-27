import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';

class AmbassadorProgramPerksScreen extends StatelessWidget {
  static String routeName = '/ambassador-program-perks';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ambassador Program Perks'),
      ),
      drawer: MainDrawer(),
      body: Center(
        child: Container(
          height: 300,
          child: Column(children: <Widget>[
            Text('The Perks:'),
            Text('A shield: for bringing the most participants'),
            Text('Free socials: for bringing over 15 participants'),
            Text('A certificate: for bringing over 10 participants'),
          ],),
        ),
      ),
    );
  }
}
