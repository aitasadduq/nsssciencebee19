import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';

class TimetableScreen extends StatefulWidget {
  @override
  _TimetableScreenState createState() => _TimetableScreenState();
}

class _TimetableScreenState extends State<TimetableScreen> {
  PDFDocument document;
  bool loading = true;

  @override
  Widget build(BuildContext context) {
    if (loading) _doc();
    return Center(
      child: PDFViewer(
        document: document,
      ),
    );
  }

  _doc () async {
    PDFDocument doc = await PDFDocument.fromAsset('assets/documents/schedule.pdf');
    setState(() {
      loading = false;
      document = doc;
    });
  }
}
