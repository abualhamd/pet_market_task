import 'package:flutter/material.dart';

import 'screens/home_screen.dart';
import 'utils/thems_and_styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Config.appTheme,
      home: const HomeScreen(),
    );
  }
}
