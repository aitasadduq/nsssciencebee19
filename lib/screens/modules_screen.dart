import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';
import '../widgets/module_item.dart';
import '../data.dart';

class ModulesScreen extends StatelessWidget {
  static String routeName = '/modules';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Modules'),
      ),
      drawer: MainDrawer(),
      body: GridView(
        padding: EdgeInsets.all(25),
        children: MODULES
            .map((modData) => ModuleItem(
                  id: modData.id,
                  title: modData.title,
                  logo: null, //NEED LOGO
                  guidelines: modData.guidelines,
                  entryCode: modData.widget,
                ))
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}
