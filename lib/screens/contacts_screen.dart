import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';
import 'scirun_main_screen.dart';

class ContactsScreen extends StatelessWidget {
  static String routeName = '/contacts';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
      ),
      drawer: MainDrawer(),
      body: Center(
        child: Text('The Contacts'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_forward),
        onPressed: () {
          Navigator.of(context).pushNamed(ScirunMainScreen.routeName);
        },
      ),
    );
  }
}
