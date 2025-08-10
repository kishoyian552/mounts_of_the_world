import 'package:flutter/material.dart';

class CategoryModel {
  final String category;
  final IconData icon;

  CategoryModel({required this.category, required this.icon});
}

final List<CategoryModel> categories = [
  CategoryModel(category: 'Mountain', icon: Icons.terrain),
  CategoryModel(category: 'Forest', icon: Icons.park),
  CategoryModel(category: 'Beach', icon: Icons.beach_access),
  CategoryModel(category: 'Hiking', icon: Icons.directions_walk),
];
