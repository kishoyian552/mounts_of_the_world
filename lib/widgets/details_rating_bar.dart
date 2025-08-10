import 'package:flutter/material.dart';
import '../theme.dart';

class DetailsRatingBar extends StatelessWidget {
  const DetailsRatingBar({Key? key}) : super(key: key);

  final Map<String, String> sampleRatingData = const {
    'Rating': '4.6',
    'Price': '\$12',
    'Open': '24hrs',
  };

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: sampleRatingData.entries.map((entry) {
          return Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.withOpacity(0.2), width: 2),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Text(
                  entry.key,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  entry.value,
                  style: TextStyle(
                    color: mainColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
