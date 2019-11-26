import 'package:flutter/material.dart';

class Clue {
  final int id;
  final String code;
  final String detail;
  final String hint;
  bool incomplete;
  bool hintViewed;
  bool textToRead;

  Clue({
    @required this.id,
    @required this.code,
    @required this.incomplete,
    @required this.detail,
    @required this.hint,
    @required this.hintViewed,
    @required this.textToRead,
  });
}
