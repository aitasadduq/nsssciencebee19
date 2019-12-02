import 'package:flutter/material.dart';
import 'package:nss_sciencebee_19/widgets/main_drawer.dart';
import '../data.dart';

class DataScreen extends StatelessWidget {
  static String routeName = '/data';

  @override
  Widget build(BuildContext context) {
    readFromFile();
    return Scaffold(
      appBar: AppBar(
        title: Text('Data'),
      ),
      drawer: MainDrawer(),
      body: Center(
        child: Text("Score: " + score.toString()),
      ),
    );
  }
}
