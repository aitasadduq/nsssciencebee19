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
  PDFDocument doc;
  bool loaded = false;
  bool done = false;
  Image image;

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, Object>;
    final title = routeArgs['title'];
    final docPath = routeArgs['guidelines'];
    if(!loaded){
      _doc(docPath);
    }else if(!done){
      setState(() {
        document = doc;
      });
    }
//    final widget = routeArgs['widget'];
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      drawer: MainDrawer(),
      body: Container(
        decoration: BoxDecoration(),
        child: PDFViewer(
          document: document,
        ),
      ),
    );
  }

  openSciRun(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(ScirunMainScreen.routeName);
  }

  _doc(String docPath) async{
    doc = await PDFDocument.fromAsset(docPath);
    loaded = true;
  }
}
