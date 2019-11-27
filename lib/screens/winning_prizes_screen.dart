import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';

class WinningPrizesScreen extends StatelessWidget {
  static String routeName = '/winning-prizes';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Winning Prizes'),
      ),
      drawer: MainDrawer(),
      body: Center(
        child: Text('Win a combined total of up to Rs. 100000!!'),
      ),
    );
  }
}
