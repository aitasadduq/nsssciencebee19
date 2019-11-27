import 'package:flutter/material.dart';
import '../screens/modules_screen.dart';
import '../screens/contacts_screen.dart';
import '../screens/ambassador_program_perks_screen.dart';
import '../screens/winning_prizes_screen.dart';

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
            title: Text('Ambassador Program Perks'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(AmbassadorProgramPerksScreen.routeName);
            },
          ),
          ListTile(
            title: Text('Winning Prizes'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(WinningPrizesScreen.routeName);
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
