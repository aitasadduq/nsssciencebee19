import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';
import 'package:nss_sciencebee_19/data.dart';
import 'package:nss_sciencebee_19/widgets/entry_code.dart';
import '../widgets/main_drawer.dart';

class ModuleGuidelinesScreen extends StatefulWidget {
  static String routeName = '/module-guidlines';

  @override
  _ModuleGuidelinesScreenState createState() => _ModuleGuidelinesScreenState();
}

class _ModuleGuidelinesScreenState extends State<ModuleGuidelinesScreen> {
  PDFDocument document;
  PDFDocument doc;
  bool loading = true;
  Image image;

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, Object>;
    final title = routeArgs['title'];
    final docPath = routeArgs['guidelines'];
    if (loading) _doc(docPath);
//    final widget = routeArgs['widget'];
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      drawer: MainDrawer(),
      body: Container(
        decoration: BoxDecoration(),
        child: Column(
          children: <Widget>[
            Expanded(
              child: PDFViewer(
                document: document,
              ),
            ),
            routeArgs["hasApp"] && !finished ? EntryCode() : Container(),
          ],
        ),
      ),
    );
  }

  _doc(String docPath) async {
    doc = await PDFDocument.fromAsset(docPath);
    setState(() {
      loading = false;
      document = doc;
    });
  }
}
