import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';
import 'scirun_main_screen.dart';
import '../widgets/main_drawer.dart';

class ModuleGuidelinesScreen extends StatefulWidget {
  static String routeName = '/module-guidlines';

  @override
  _ModuleGuidelinesScreenState createState() => _ModuleGuidelinesScreenState();
}

class _ModuleGuidelinesScreenState extends State<ModuleGuidelinesScreen> {
  PDFDocument document;
  bool _isLoading = true;

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, Object>;
    final title = routeArgs['title'];
    final docPath = routeArgs['guidelines'];
//    final widget = routeArgs['widget'];
    WidgetsBinding.instance.addPostFrameCallback((_) => _doc(docPath));
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      drawer: MainDrawer(),
      body: Column(
        children: <Widget>[
          RaisedButton(
            onPressed: openSciRun(context),
            child: Text('Open Sci-Run'),
          ),
          Container(
            child: _isLoading
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : PDFViewer(
                    document: document,
                  ),
          ),
        ],
      ),
    );
  }

  openSciRun(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(ScirunMainScreen.routeName);
  }

  void _doc(String docPath) async {
    document = await PDFDocument.fromAsset(docPath);
    setState(() {
      _isLoading = false;
    });
  }
}
