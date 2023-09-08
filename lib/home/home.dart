import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Clicking Game"),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () => setState(() => _counter++)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MotivationalText(count: _counter),
            Text(
              "$_counter",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            ElevatedButton.icon(
              onPressed: () => setState(
                () {
                  _counter = 0;
                },
              ),
              icon: const Icon(Icons.restore),
              label: const Text("Reset"),
            ),
          ],
        ),
      ),
    );
  }
}

class MotivationalText extends StatelessWidget {
  const MotivationalText({super.key, required, required this.count});

  final int count;

  String _computeText(int count) {
    return switch (count) {
      0 => "Click me!",
      1 => "Good",
      int count when count >= 2 && count < 10 => "Keep going.",
      int count when count >= 10 && count < 20 => "Don't give up!",
      int count when count >= 20 => "Reset!",
      _ => "Impossible!",
    };
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      _computeText(count),
      style: Theme.of(context).textTheme.headlineSmall,
    );
  }
}
