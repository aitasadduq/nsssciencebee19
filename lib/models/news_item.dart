import 'package:firebase_database/firebase_database.dart';

class NewsItem {
  String content;
  String timestamp;

  NewsItem(this.content, this.timestamp);
}