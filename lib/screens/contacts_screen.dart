import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';

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
    );
  }
}
