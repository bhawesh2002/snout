import 'package:flutter/material.dart';
import 'package:snout/widgets/snout_icon_button.dart';

class ProductCard extends StatelessWidget {
  final String? productName;
  final String? price;
  const ProductCard({super.key, this.productName, this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 213, 213, 213),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Image of Product
          SizedBox(
            height: 180,
            child: Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      colorFilter: ColorFilter.mode(
                          Color.fromARGB(255, 182, 182, 182),
                          BlendMode.saturation),
                      image: AssetImage(
                        'lib/assets/images/pet_food.png',
                      ),
                    ),
                  ),
                ),
                const Positioned.fill(
                  right: 8,
                  top: 8,
                  child: Align(
                    alignment: Alignment.topRight,
                    child: CircleAvatar(
                      radius: 16,
                      backgroundColor: Color.fromARGB(255, 200, 200, 200),
                      foregroundColor: Colors.white,
                      child: Icon(
                        Icons.pets,
                        size: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //Seperation
          const SizedBox(height: 8),
          //Product Details
          Flexible(
            fit: FlexFit.loose,
            child: Stack(
              children: [
                const Positioned(
                  right: 12,
                  bottom: 12,
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: SnoutIconButton(
                      icon: Icons.shopping_bag,
                      shape: BoxShape.rectangle,
                      borderWidth: 1,
                      borderColor: Colors.black,
                      borderRadius: 8,
                      size: 8,
                      iconSize: 18,
                    ),
                  ),
                ),
                Positioned(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            productName ?? "Product Name",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 2),
                          const Text(
                            "-20%",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            price ?? "\$\$\$",
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
