import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';

class ModuleGuidelinesScreen extends StatelessWidget {
  static String routeName = '/module-guidlines';

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final title = routeArgs['title'];
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      drawer: MainDrawer(),
      body: Center(
        child: Text('Welcome to the module guidlines'),
      ),
    );
  }
}
