import 'package:flutter/material.dart';

class Module {
  final String id;
  final String title;
  final String imageUrl;

  const Module({
    @required this.id,
    @required this.title,
    this.imageUrl =
        'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
  });
}
