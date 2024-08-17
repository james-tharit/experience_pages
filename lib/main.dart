import 'package:experience_pages/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:experience_pages/home.dart';

void main() {
  usePathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ExperienceBlogs',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: stateGray,
            primary: stateGray,
            secondary: darkStateGray,
            tertiary: battleshipGray),
        useMaterial3: false,
      ),
      home: const Home(),
    );
  }
}
