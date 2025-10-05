import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
  });
}

const appMenuItems = <MenuItem>[
  MenuItem(
    title: 'Botones',
    subTitle: 'Varios estilos de botón',
    link: '/buttons',
    icon: Icons.smart_button_outlined,
  ),
  MenuItem(
    title: 'Cards',
    subTitle: 'Contenedor estilizado',
    link: '/cards',
    icon: Icons.credit_card_off_outlined,
  ),
];
