import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:snout/pages/splash_screen.dart';
import 'package:snout/utils/measurements/uisizes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    UiSizes().init(context);
    const Color scaffoldColor = Color.fromARGB(255, 141, 37, 206);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'Metropolis', scaffoldBackgroundColor: scaffoldColor),
      home: const AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
            // systemNavigationBarColor: scaffoldColor,
            // statusBarColor: scaffoldColor,
            ),
        child: SplashScreen(),
      ),
    );
  }
}
