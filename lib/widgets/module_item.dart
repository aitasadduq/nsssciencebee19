import 'package:flutter/material.dart';
import '../screens/module_guidelines_screen.dart';

class ModuleItem extends StatelessWidget {
  final String id;
  final String title;
  final String logo;
  final String guidelines;
  final Widget entryCode;

  ModuleItem({
    @required this.id,
    @required this.title,
    this.logo,
    @required this.guidelines,
    @required this.entryCode,
  });

  void selectModule(BuildContext context) {
    Navigator.of(context)
        .pushNamed(ModuleGuidelinesScreen.routeName, arguments: {
      'id': id,
      'title': title,
      'logo':logo,
      'guidelines': guidelines,
      'widget': entryCode,
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectModule(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: EdgeInsets.all(15),
        child: Center(
          child: Text(
            title,
            style: Theme.of(context).textTheme.title,
          ),
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.amberAccent,
              Colors.cyanAccent.withOpacity(0.3),
            ],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
