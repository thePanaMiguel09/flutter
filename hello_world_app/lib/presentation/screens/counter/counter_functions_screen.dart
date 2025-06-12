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
          CustomButton(
            icon: Icons.refresh,
            onPressed: () {
              setState(() {
                clickCounter = 0;
              });
            },
          ),

          const SizedBox(height: 15),

          CustomButton(
            icon: Icons.exposure_minus_1,
            onPressed: () {
              setState(() {
                if (clickCounter == 0) return;
                clickCounter--;
              });
            },
          ),

          const SizedBox(height: 15),

          CustomButton(
            icon: Icons.plus_one,
            onPressed: () {
              setState(() {
                clickCounter++;
              });
            },
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const CustomButton({super.key, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: StadiumBorder(),
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
