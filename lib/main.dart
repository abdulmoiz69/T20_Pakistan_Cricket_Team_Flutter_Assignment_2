// main.dart

import 'package:flutter/material.dart';
import 'batsman_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BatsmanList(),
    );
  }
}
