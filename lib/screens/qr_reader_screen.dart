//import 'dart:async';
//import 'package:flutter/material.dart';
//import 'package:fast_qr_reader_view/fast_qr_reader_view.dart';
//
//List<CameraDescription> cameras;
//
//Future<Null> main() async {
//  cameras = await availableCameras();
//  runApp(new QRReaderScreen());
//}
//
//class QRReaderScreen extends StatefulWidget {
//  static String routeName = '/qr-reader';
//
//  @override
//  _QRReaderScreenState createState() => _QRReaderScreenState();
//}
//
//class _QRReaderScreenState extends State<QRReaderScreen> {
//  QRReaderController controller;
//
//  @override
//  void initState() {
//    // TODO: implement initState
//    super.initState();
//    controller = new QRReaderController(
//        cameras[0], ResolutionPreset.medium, [CodeFormat.qr], (dynamic value) {
//      Navigator.of(context).pop(value);
//    });
//  }
//
//  @override
//  void dispose() {
//    controller?.dispose();
//    super.dispose();
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    if (!controller.value.isInitialized) {
//      return new Container();
//    }
//    return new AspectRatio(
//      aspectRatio: controller.value.aspectRatio,
//      child: new QRReaderPreview(controller),
//    );
//  }
//}
