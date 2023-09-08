import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const ClickingGame());
}

class ClickingGame extends StatelessWidget {
  const ClickingGame({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Clicking Game"),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {},
        ),
        body: Center(
          child: Text(
            "You have clicked this many times:",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
      ),
    );
  }
}
