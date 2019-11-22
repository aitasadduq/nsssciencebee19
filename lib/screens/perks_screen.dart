import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';

class PerksScreen extends StatelessWidget {
  static String routeName = '/perks';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perks'),
      ),
      drawer: MainDrawer(),
      body: Center(
        child: Text('The Perks'),
      ),
    );
  }
}
