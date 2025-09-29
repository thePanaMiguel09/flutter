import 'package:flutter/material.dart';

const Color _customeColor = Color(0xFF49149F);

const List<Color> _colorThemes = [
  _customeColor,
  Colors.lightBlueAccent,
  Colors.greenAccent,
  Colors.yellowAccent,
  Colors.orangeAccent,
];

class AppTheme {
  final int selectedColor = 0;

  AppTheme({required selectedColor})
    : assert(
        selectedColor >= 0 && selectedColor <= _colorThemes.length - 1,
        'Colors must be between 0 and ${_colorThemes.length - 1}',
      );

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor],
      brightness: Brightness.light,
    );
  }
}
