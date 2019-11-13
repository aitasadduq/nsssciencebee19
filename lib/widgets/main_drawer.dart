import 'package:flutter/material.dart';
import '../screens/modules_screen.dart';
import '../screens/contacts_screen.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 150,
            width: double.infinity,
            color: Theme.of(context).accentColor,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
          ),
          ListTile(
            title: Text('Home'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
          ListTile(
            title: Text('Modules'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(ModulesScreen.routeName);
            },
          ),
          ListTile(
            title: Text('Contacts'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(ContactsScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}