import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:snout/utils/measurements/uisizes.dart';
import 'package:snout/widgets/category_tile_long.dart';
import 'package:snout/widgets/product_card.dart';
import 'package:snout/widgets/snout_appbar.dart';
import 'package:snout/widgets/snout_text_field.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final UiSizes uiSizes = UiSizes();
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
            top: MediaQuery.of(context).padding.top,
            right: uiSizes.w2,
            left: uiSizes.w2,
            bottom: uiSizes.h1),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SnoutAppbar(),
            SizedBox(height: uiSizes.h1),
            SnoutTextField(
              controller: TextEditingController(
                  text: '(${uiSizes.width},${uiSizes.height})'),
            ),
            SizedBox(height: uiSizes.h2w1),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: uiSizes.w3),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const CategoryTileLong(
                        title: "Most Popular",
                        subTitle: "Top selling products on Snout",
                      ),
                      SizedBox(height: uiSizes.h2),
                      AlignedGridView.count(
                          shrinkWrap: true,
                          crossAxisCount: 2,
                          itemCount: 12,
                          physics: const NeverScrollableScrollPhysics(),
                          padding: EdgeInsets.zero,
                          crossAxisSpacing: 12,
                          mainAxisSpacing: 12,
                          itemBuilder: (context, index) {
                            return const ProductCard();
                          })
                    ],
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
