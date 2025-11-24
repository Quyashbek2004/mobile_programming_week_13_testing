import 'package:flutter/material.dart';

void main() => runApp(const PerfApp());

class PerfApp extends StatelessWidget {
  const PerfApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListView.builder(
        itemCount: 5000,
        itemBuilder: (_, i) => Text("Item $i"),
      ),
    );
  }
}
