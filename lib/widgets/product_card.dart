import 'package:flutter/material.dart';
import 'package:snout/utils/app_icons.dart';
import 'dart:math' as math;

import 'package:snout/widgets/metropolis_text.dart';

class ProductCard extends StatelessWidget {
  final String? productName;
  final String? price;
  const ProductCard({super.key, this.productName, this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          border: Border.all(width: 1, color: const Color(0xffEFEFEF))),
      child: Stack(
        children: [
          //Label Displaying Discount Percentage
          Positioned.fill(
            child: Align(
              alignment: Alignment.topRight,
              child: Transform.rotate(
                angle: math.pi / 4,
                origin: const Offset(5, 55),
                child: Container(
                  height: 15,
                  width: 120, //set the width to 120
                  decoration: BoxDecoration(
                    color: Colors.grey.shade800,
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 5,
                        spreadRadius: 0.2,
                        color: Color.fromARGB(255, 220, 220, 220),
                        offset: Offset(0, 4),
                      )
                    ],
                  ),
                  child: const Center(
                    child: MetropolisText(
                      "10% OFF",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 8,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          ),
          //Icon for displaying for which animal food is for
          Positioned.fill(
            top: 8,
            left: 8,
            child: Align(
              alignment: Alignment.topLeft,
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey.shade200.withOpacity(0.4)),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Icon(
                    AppIcons.pet,
                    size: 14,
                    color: Colors.black.withOpacity(0.7),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 150,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'lib/assets/images/product_package_1.png',
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Kennel Kitchen Wet Dog Food - Lamb Chunks in Gravy (Pack of 15 x 80g Pouches)',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 4),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(AppIcons.star, size: 18),
                    const SizedBox(width: 4),
                    const Text(
                      '4.2',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                const SizedBox(height: 10),
                const Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '₹ 2,456',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 0.5,
                      ),
                    ),
                    SizedBox(width: 6),
                    Text(
                      '₹3,124',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.lineThrough,
                          height: 1.5),
                    )
                  ],
                ),
                const SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                      color: const Color(0xffE5E5E5),
                      borderRadius: BorderRadius.circular(6)),
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                      child: MetropolisText(
                        "ADD TO CART",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
