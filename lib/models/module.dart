import 'package:flutter/material.dart';

class Module {
  final String id;
  final String title;
  final String logo;
  final String guidelines;
  final bool hasApp;

  const Module({
    @required this.id,
    @required this.title,
    this.logo =
        'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
    @required this.guidelines,
    @required this.hasApp,
  });
}
