import 'package:flutter/material.dart';

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
          border: Border.all(
              width: 2, color: const Color.fromARGB(255, 231, 231, 231))),
      child: Padding(
        padding: const EdgeInsets.all(10),
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
            const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.star_border, size: 18),
                SizedBox(width: 4),
                Text(
                  '4.2',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
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
                  padding: EdgeInsets.symmetric(vertical: 12.0),
                  child: Text(
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
    );
  }
}
