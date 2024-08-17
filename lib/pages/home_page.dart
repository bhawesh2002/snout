import 'package:flutter/material.dart';
import 'package:snout/utils/measurements/uisizes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: UiSizes().width,
          height: UiSizes().height,
          color: const Color.fromARGB(255, 37, 201, 206),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'SNOUT',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 8),
                child: Text(
                  '''Snout is a vibrant and user-friendly pet food e-commerce app designed'''
                  ''' to cater to the unique dietary needs of your furry companions. With a focus'''
                  ''' on quality and convenience, Snout offers a wide selection of premium pet'''
                  ''' foods, treats, and supplies, all curated to keep your pets healthy'''
                  ''' and happy. Whether you're looking for specialized diets or everyday essentials,'''
                  ''' Snout makes it easy to find the best products for your pets, delivered '''
                  '''straight to your door.''',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  side: const BorderSide(
                    width: 2,
                    color: Colors.white,
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    "Start Shopping",
                    textHeightBehavior: TextHeightBehavior(
                      applyHeightToLastDescent: false,
                      applyHeightToFirstAscent: true,
                    ),
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      height: 1.1,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
