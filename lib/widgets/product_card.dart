import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:snout/utils/app_icons.dart';
import 'package:snout/utils/measurements/uisizes.dart';
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
          borderRadius: BorderRadius.circular(UiSizes().w3),
          border: Border.all(
              width: 1, color: const Color.fromARGB(255, 209, 209, 209))),
      child: LayoutBuilder(
        builder: (context, constraints) {
          double maxWidth = constraints.maxWidth;
          return Stack(
            children: [
              Positioned(
                child: Align(
                  alignment: Alignment.topRight,
                  child: Transform.rotate(
                    angle: math.pi / 4,
                    origin: Offset(maxWidth * 0.05, maxWidth * 0.385),
                    child: Container(
                      height: constraints.maxWidth * 0.08,
                      width: constraints.maxWidth * 0.8, //set the width to 120
                      decoration: BoxDecoration(
                        color: Colors.grey.shade800,
                        // boxShadow: const [
                        //   BoxShadow(
                        //     blurRadius: 5,
                        //     spreadRadius: 0.2,
                        //     color: Color.fromARGB(255, 220, 220, 220),
                        //     offset: Offset(0, 4),
                        //   )
                        // ],
                      ),
                      child: Center(
                        child: MetropolisText(
                          "10% OFF",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: maxWidth * 0.05,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: maxWidth * 0.04,
                left: maxWidth * 0.04,
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
                        size: maxWidth * 0.085,
                        color: Colors.black.withOpacity(0.7),
                      ),
                    ),
                  ),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: constraints.maxWidth,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'lib/assets/images/product_package_1.png',
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: maxWidth * 0.04, horizontal: maxWidth * 0.04),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Kennel Kitchen Wet Dog Food - Lamb Chunks in Gravy (Pack of 15 x 80g Pouches)',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: maxWidth * 0.07,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: maxWidth * 0.02),
                        Text(
                          'for Dogs',
                          style: TextStyle(
                              fontSize: maxWidth * 0.070,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: maxWidth * 0.04),
                        SizedBox(
                          height: maxWidth * 0.1,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            // crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                  children: List.generate(5, (index) {
                                return FittedBox(
                                  child: Icon(
                                    AppIcons.star,
                                  ),
                                );
                              })),
                              SizedBox(width: maxWidth * 0.03),
                              Text(
                                '4.2',
                                // maxFontSize: 22,
                                style: TextStyle(
                                    fontSize: maxWidth * 0.07,
                                    fontWeight: FontWeight.w500,
                                    height: 1),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: maxWidth * 0.04),
                        Wrap(
                          crossAxisAlignment: WrapCrossAlignment.end,
                          spacing: maxWidth * 0.02,
                          runSpacing: maxWidth * 0.02,
                          children: [
                            MetropolisText(
                              '₹ 2,450',
                              style: TextStyle(
                                fontSize: maxWidth * 0.10,
                                fontWeight: FontWeight.w800,
                                letterSpacing: 0.5,
                              ),
                            ),
                            MetropolisText(
                              '₹3,544',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: maxWidth * 0.07,
                                fontWeight: FontWeight.w400,
                                decoration: TextDecoration.lineThrough,
                                height: 1.5,
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: maxWidth * 0.04),
                        Container(
                          decoration: BoxDecoration(
                              color: const Color(0xffE5E5E5),
                              borderRadius:
                                  BorderRadius.circular(maxWidth * 0.04)),
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: maxWidth * 0.08),
                              child: MetropolisText(
                                "ADD TO CART",
                                style: TextStyle(
                                  fontSize: maxWidth * 0.065,
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
              )
            ],
          );
        },
      ),
    );
  }
}
