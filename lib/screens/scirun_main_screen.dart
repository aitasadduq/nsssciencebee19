import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:barcode_scan/barcode_scan.dart';
import 'dart:async';
import '../widgets/clue_item.dart';

class ScirunMainScreen extends StatefulWidget {
  static String routeName = '/scirun';

  @override
  _ScirunMainScreenState createState() => _ScirunMainScreenState();
}

class _ScirunMainScreenState extends State<ScirunMainScreen> {
  final double diameter = 45;
  String barcode = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SciRun'),
      ),
      body: Container(
//        height: double.infinity,
//        width: double.infinity,
        child: Center(
          child: Column(
            children: <Widget>[
              ClueItem(),
              Center(
                child: Text(barcode),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            height: diameter,
            width: diameter,
            child: FittedBox(
              child: FloatingActionButton(
                child: Icon(Icons.history),
                heroTag: 0,
                tooltip: 'Solved Clues History',
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: diameter,
            width: diameter,
            child: FittedBox(
              child: FloatingActionButton(
                child: Icon(Icons.lightbulb_outline),
                heroTag: 1,
                tooltip: 'Hint',
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          FloatingActionButton(
            child: Icon(Icons.settings_overscan),
            heroTag: 2,
            tooltip: 'Scan QR Code',
            onPressed: scan,
          ),
        ],
      ),
    );
  }

  Future scan() async {
    try {
      String barcode = await BarcodeScanner.scan();
      setState(() => this.barcode = barcode);
    } on PlatformException catch (e) {
      if (e.code == BarcodeScanner.CameraAccessDenied) {
        setState(() {
          this.barcode = 'Camera permission needed!';
        });
      } else {
        setState(() => this.barcode = 'Unknown error: $e');
      }
    } on FormatException {
      setState(() => this.barcode = 'User pressed back before scanning.');
    } catch (e) {
      setState(() => this.barcode = 'Unknown error: $e');
    }
  }
}
