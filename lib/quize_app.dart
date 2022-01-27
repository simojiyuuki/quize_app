import 'package:flutter/material.dart';
import 'package:quize_app/ui/pages/quize_page.dart';

class QuizeApp extends StatelessWidget {
  const QuizeApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My First App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const QuizePage(),
    );
  }
}
