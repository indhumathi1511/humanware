import 'package:flutter/material.dart';

import 'local_travel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LocalTravel(),
      // Mobile()
    );
  }
}
