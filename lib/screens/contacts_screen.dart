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
        child: Container(
          height: 300,
          child: Column(
            children: <Widget>[
              Text('Module Heads:'),
              Text('Khan Moeen Danish: 03052888000'),
              Text('Shaheer Mehmood: 03445115096'),
            ],
          ),
        ),
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
