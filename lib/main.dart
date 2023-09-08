import 'package:flutter/material.dart';

import 'home/home.dart';

void main(List<String> args) {
  runApp(const ClickingGameApp());
}

/// A game that entices you to click forever
class ClickingGameApp extends StatelessWidget {
  const ClickingGameApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
