import 'package:flutter/material.dart';
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
      home: Scaffold(
        body: Container(
          width: UiSizes().width,
          height: UiSizes().height,
          color: Colors.teal,
          child: const Center(
            child: Text(
              'Hello World!',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
