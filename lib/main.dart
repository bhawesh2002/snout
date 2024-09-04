import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:snout/pages/splash_screen.dart';
import 'package:snout/utils/measurements/uisizes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(DevicePreview(
      enabled: !kReleaseMode, builder: (context) => const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    UiSizes().init(context);
    return MaterialApp(
      // useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: const Color.fromARGB(255, 141, 37, 206),
          fontFamily: 'Metropolis',
          scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255)),
      home: const AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
          systemNavigationBarIconBrightness: Brightness.dark,
        ),
        child: SplashScreen(),
      ),
    );
  }
}
