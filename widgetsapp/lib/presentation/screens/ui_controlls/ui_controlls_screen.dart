import 'package:flutter/material.dart';

class UiControllScreen extends StatelessWidget {
  static const String name = 'control_screen';

  const UiControllScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('UI Controlls')),
      body: _UIControlls(),
    );
  }
}

class _UIControlls extends StatefulWidget {
  @override
  State<_UIControlls> createState() => _UIControllsState();
}

enum Transportation { Car, Plane, Motorcycle, Submarine }

class _UIControllsState extends State<_UIControlls> {
  bool isDeveloper = true;
  Transportation selectedTrasnportationOption = Transportation.Car;

  bool wantBreakfast = false;
  bool wantLunch = true;
  bool wantDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: Text('Switch'),
          subtitle: Text('Este es un switch'),
          value: isDeveloper,
          onChanged: (value) => setState(() {
            isDeveloper = !isDeveloper;
          }),
        ),
        ExpansionTile(
          title: Text('Transport Type'),
          subtitle: Text("Transport type's list"),
          initiallyExpanded: true,
          children: [
            RadioListTile(
              title: const Text('By Car'),
              value: Transportation.Car,
              groupValue: selectedTrasnportationOption,
              onChanged: (value) => setState(() {
                selectedTrasnportationOption = Transportation.Car;
              }),
            ),
            RadioListTile(
              title: const Text('By Motorcycle'),
              value: Transportation.Motorcycle,
              groupValue: selectedTrasnportationOption,
              onChanged: (value) => setState(() {
                selectedTrasnportationOption = Transportation.Motorcycle;
              }),
            ),
            RadioListTile(
              title: const Text('By Plane'),
              value: Transportation.Plane,
              groupValue: selectedTrasnportationOption,
              onChanged: (value) => setState(() {
                selectedTrasnportationOption = Transportation.Plane;
              }),
            ),
            RadioListTile(
              title: const Text('By Submarine'),
              value: Transportation.Submarine,
              groupValue: selectedTrasnportationOption,
              onChanged: (value) => setState(() {
                selectedTrasnportationOption = Transportation.Submarine;
              }),
            ),
          ],
        ),
        CheckboxListTile(
          title: Text('Breakfast?'),
          value: wantBreakfast,
          onChanged: (value) => setState(() {
            wantBreakfast = !wantBreakfast;
          }),
        ),
        CheckboxListTile(
          title: Text('Lunch?'),
          value: wantLunch,
          onChanged: (value) => setState(() {
            wantLunch = !wantLunch;
          }),
        ),
        CheckboxListTile(
          title: Text('Dinner?'),
          value: wantDinner,
          onChanged: (value) => setState(() {
            wantDinner = !wantDinner;
          }),
        ),
      ],
    );
  }
}
