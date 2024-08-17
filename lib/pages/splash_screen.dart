import 'dart:async';

import 'package:flutter/material.dart';
import 'package:snout/pages/home_page.dart';
import 'package:snout/utils/measurements/uisizes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Color?> _bgColor;
  late Animation<double> _fontSize;
  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1, milliseconds: 200),
    );
    _bgColor = ColorTween(
            begin: const Color.fromARGB(255, 64, 18, 93),
            end: const Color.fromARGB(255, 141, 37, 206))
        .animate(
            CurvedAnimation(parent: _animationController, curve: Curves.ease));
    _fontSize = Tween<double>(begin: 32, end: 48).animate(CurvedAnimation(
        parent: _animationController, curve: Curves.easeInBack));
    _animationController.repeat(reverse: true);
    super.initState();

    Timer(const Duration(seconds: 4), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const HomePage()));
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBuilder(
        animation: _animationController,
        builder: (context, child) {
          return Container(
            width: UiSizes().width,
            height: UiSizes().height,
            decoration: BoxDecoration(color: _bgColor.value),
            child: Center(
              child: Text(
                "SNOUT",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: _fontSize.value,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
