import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:words/screens/home.dart';
import 'package:words/services/word_services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final url = 'http://www.omdbapi.com/?i=tt3896198&apikey=5c92ac8f';
    return MaterialApp(
      title: 'English Synonyms-Antonyms',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: homeScreen(),
    );
  }
}
