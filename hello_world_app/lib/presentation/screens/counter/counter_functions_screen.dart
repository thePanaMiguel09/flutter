import 'package:flutter/material.dart';

class CounterFuncionsScreens extends StatefulWidget {
  const CounterFuncionsScreens({super.key});

  @override
  State<CounterFuncionsScreens> createState() => _CounterFuncionsScreensState();
}

class _CounterFuncionsScreensState extends State<CounterFuncionsScreens> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Functions Screens'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh_sharp),
            onPressed: () {
              setState(() {
                clickCounter = 0;
              });
            },
          ),
        ],
      ),
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
              "Click${clickCounter == 1 ? '' : "s"}",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            shape: StadiumBorder(),
            onPressed: () {
              setState(() {
                clickCounter++;
              });
            },
            child: const Icon(Icons.plus_one),
          ),

          const SizedBox(height: 15),

          FloatingActionButton(
            shape: StadiumBorder(),
            onPressed: () {
              setState(() {
                if (clickCounter > 0) {
                  clickCounter--;
                }
              });
            },
            child: const Icon(Icons.exposure_minus_1_outlined),
          ),
        ],
      ),
    );
  }
}
