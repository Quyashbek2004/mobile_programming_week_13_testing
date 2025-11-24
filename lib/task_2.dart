import 'package:flutter/material.dart';

void main() => runApp(const CounterApp());

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(child: Text('$count', key: const Key('counterText'))),
        floatingActionButton: FloatingActionButton(
          key: const Key('incrementBtn'),
          onPressed: () => setState(() => count++),
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
