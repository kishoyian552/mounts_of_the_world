import 'package:flutter/material.dart';

class AppBottomBarItem {
  final IconData icon;
  final String label;
  bool isSelected;

  AppBottomBarItem({
    required this.icon,
    required this.label,
    this.isSelected = false,
  });
}
