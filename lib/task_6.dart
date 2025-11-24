import 'package:flutter/material.dart';

void main() => runApp(const Demo());

class Demo extends StatefulWidget {
  const Demo({super.key});

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        children: [
          Text("Count: $counter"),
          ElevatedButton(
            onPressed: () => setState(() => counter++),
            child: const Text("Increase"),
          ),
          Text("Rebuilds shown here: $counter"),
        ],
      ),
    );
  }
}
