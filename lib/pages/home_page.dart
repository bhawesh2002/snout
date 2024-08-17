import 'package:flutter/material.dart';
import 'package:snout/widgets/metropolis_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const MetropolisText(
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
                child: MetropolisText(
                  "Start Shopping",
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
    );
  }
}
