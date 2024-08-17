import 'package:flutter/material.dart';
import 'package:snout/pages/home_page.dart';
import 'package:snout/utils/measurements/uisizes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    UiSizes().init(context);
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Metropolis'),
      home: const HomePage(),
    );
  }
}
