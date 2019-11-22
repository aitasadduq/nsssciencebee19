import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';

class AmbassadorProgramScreen extends StatelessWidget {
  static String routeName = '/ambassador-program';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ambassador Program'),
      ),
      drawer: MainDrawer(),
      body: Center(
        child: Text('The Ambassador Program'),
      ),
    );
  }
}
