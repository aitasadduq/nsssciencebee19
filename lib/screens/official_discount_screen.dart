import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';

class OfficialDiscountScreen extends StatelessWidget {
  static String routeName = '/official-discount';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Official Team Discount'),
      ),
      drawer: MainDrawer(),
      body: Center(
        child: Text('The Official Team Discount'),
      ),
    );
  }
}
