import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int clickCounter = 0;
  String word = "Clicks";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter Screens')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$clickCounter",
              style: const TextStyle(
                fontSize: 150,
                fontWeight: FontWeight.w100,
              ),
            ),
            Text(
              word,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            clickCounter++;
            clickCounter == 1 ? word = 'Click' : word = 'Clicks';
          });
        },
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}
