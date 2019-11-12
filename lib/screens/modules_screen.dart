import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';

class ModulesScreen extends StatelessWidget {
  static String routeName = '/modules';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Modules'),
      ),
      drawer: MainDrawer(),
      body: Center(
        child: Text('The Modules'),
      ),
    );
  }
}
