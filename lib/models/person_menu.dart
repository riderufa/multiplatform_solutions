import 'package:flutter/material.dart';

class PersonMenu {
  final IconData icon;
  final String title;

  PersonMenu({
    required this.icon,
    required this.title,
  });
}

List<PersonMenu> personMenu = [
  PersonMenu(icon: Icons.person, title: 'VIEW PROFILE'),
  PersonMenu(icon: Icons.people, title: 'FRIENDS'),
  PersonMenu(icon: Icons.description, title: 'REPORT'),
];
