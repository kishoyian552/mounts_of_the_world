import 'package:flutter/material.dart';
import 'pages/splash_page.dart';
import 'theme.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashPage(),
      theme: ThemeData(primaryColor: mainColor),
    ),
  );
}
