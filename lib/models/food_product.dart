import 'package:snout/models/product_details.dart';
import 'package:snout/models/product_nutrition.dart';

class FoodProduct {
  final String name;
  final String price;
  final List<String> imgPath;
  final List<String>? threeDimgPath;
  final String description;
  final ProductDetails details;
  final ProductNutrition nutrition;

  FoodProduct(
      {required this.name,
      required this.price,
      required this.imgPath,
      this.threeDimgPath,
      required this.description,
      required this.details,
      required this.nutrition});

  factory FoodProduct.fromJson(Map<String, dynamic> json) {
    return FoodProduct(
        name: json['name'] as String,
        price: json['price'] as String,
        imgPath: json['imgPath'] as List<String>,
        threeDimgPath: json['threeDimgPath'] as List<String>,
        description: json['description'],
        details:
            ProductDetails.fromJson(json['details'] as Map<String, dynamic>),
        nutrition: ProductNutrition.fromJson(
            json['nutrition'] as Map<String, dynamic>));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'name': name,
      'price': price,
      'imgPath': imgPath,
      'threeDimgPath': threeDimgPath ?? [],
      'description': description,
      'details': details,
      'nutrition': nutrition,
    };
  }
}
