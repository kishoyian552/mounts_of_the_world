import 'package:flutter/material.dart';
import '../theme.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 30, top: 30, right: 30),
      child: Row(
        children: [
          ClipOval(
            child: Image.asset(
              'assets/images/profile.jpg',
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Hello, Roman',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Good Morning',
                style: TextStyle(color: mainColor, fontSize: 12),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
