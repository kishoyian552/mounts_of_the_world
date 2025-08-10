import 'package:flutter/material.dart';
import '../models/app_bottom_bar_item.dart';
import '../theme.dart';

class AppBottomBar extends StatefulWidget {
  const AppBottomBar({Key? key}) : super(key: key);

  @override
  AppBottomBarState createState() => AppBottomBarState();
}

class AppBottomBarState extends State<AppBottomBar> {
  final List<AppBottomBarItem> barItems = [
    AppBottomBarItem(icon: Icons.home, label: 'Home', isSelected: true),
    AppBottomBarItem(icon: Icons.explore, label: 'Explore'),
    AppBottomBarItem(icon: Icons.turned_in_not, label: 'Tag'),
    AppBottomBarItem(icon: Icons.person_outline, label: 'Profile'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: Offset.zero,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(barItems.length, (index) {
          final currentBarItem = barItems[index];

          if (currentBarItem.isSelected) {
            return Container(
              padding: const EdgeInsets.only(
                left: 15,
                top: 5,
                bottom: 5,
                right: 15,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: mainColor,
              ),
              child: Row(
                children: [
                  Icon(currentBarItem.icon, color: Colors.white),
                  const SizedBox(width: 5),
                  Text(
                    currentBarItem.label,
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
            );
          } else {
            return IconButton(
              icon: Icon(currentBarItem.icon, color: Colors.grey),
              onPressed: () {
                setState(() {
                  for (final item in barItems) {
                    item.isSelected = false;
                  }
                  currentBarItem.isSelected = true;
                });
              },
            );
          }
        }),
      ),
    );
  }
}
