import 'package:flutter/material.dart';
import '../theme.dart';
import 'mounts_app.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(
        context,
      ).pushReplacement(MaterialPageRoute(builder: (_) => const MountsApp()));
    });

    return Container(
      color: mainColor,
      child: Stack(
        children: const [
          Align(
            alignment: Alignment.center,
            child: Icon(Icons.terrain, color: Colors.white, size: 90),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 80),
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
