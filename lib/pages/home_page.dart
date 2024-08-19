import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:snout/widgets/category_tile_long.dart';
import 'package:snout/widgets/product_card.dart';
import 'package:snout/widgets/snout_appbar.dart';
import 'package:snout/widgets/snout_text_field.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
            top: MediaQuery.of(context).padding.top,
            right: 12,
            left: 12,
            bottom: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SnoutAppbar(),
            const SizedBox(height: 12),
            const SnoutTextField(),
            // const SizedBox(height: 32),
            // const PetSelectionMini(),
            const SizedBox(height: 32),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const CategoryTileLong(
                        title: "Most Popular",
                        subTitle: "Top selling products on Snout",
                      ),
                      const SizedBox(height: 24),
                      MasonryGridView.builder(
                        shrinkWrap: true,
                        padding: EdgeInsets.zero,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 12,
                        mainAxisSpacing: 18,
                        crossAxisSpacing: 16,
                        gridDelegate:
                            const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2),
                        itemBuilder: (context, index) {
                          return const ProductCard();
                        },
                      ),
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
