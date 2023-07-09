import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final IconData icon;
  final String link;

  const MenuItem(
      {required this.title,
      required this.subTitle,
      required this.icon,
      required this.link});
}

const appMenuItem = <MenuItem>[
  MenuItem(
      title: 'Botones',
      subTitle: 'Varios botones en Flutter',
      icon: Icons.smart_button_outlined,
      link: '/buttons'),
  MenuItem(
      title: 'Tarjetas',
      subTitle: 'Un contenedor estilizado',
      icon: Icons.credit_card,
      link: '/card'),
];
