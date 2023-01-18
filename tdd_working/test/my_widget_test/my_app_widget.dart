import 'package:flutter/material.dart';

class MyAppWidget extends StatelessWidget {
  final String title;
  final String message;
  const MyAppWidget({super.key, required this.title, required this.message});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Widget App",
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: Text(message),
        ),
      ),
    );
  }
}
