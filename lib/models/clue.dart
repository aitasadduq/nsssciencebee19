import 'package:flutter/material.dart';

class Clue {
  final int id;
  final String code;
  final String detail;
  bool incomplete;

  Clue({
    @required this.id,
    @required this.code,
    @required this.incomplete,
    @required this.detail,
  });
}
