class ProductDetails {
  final String brand;
  final String weight;
  final String foodType;
  final String lifeStage;
  final String breedSize;
  final String specialDiet;
  final String ingredient;
  final String suitableFor;

  ProductDetails(
      {required this.brand,
      required this.weight,
      required this.foodType,
      required this.lifeStage,
      required this.breedSize,
      required this.specialDiet,
      required this.ingredient,
      required this.suitableFor});

  factory ProductDetails.fromJson(Map<String, dynamic> json) {
    return ProductDetails(
      brand: json['brand'] as String,
      weight: json['weight'] as String,
      foodType: json['foodType'] as String,
      lifeStage: json['lifeStage'] as String,
      breedSize: json['breedSize'] as String,
      specialDiet: json['specialDiet'] as String,
      ingredient: json['ingredient'] as String,
      suitableFor: json['suitableFor'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'brand': brand,
      'weight': weight,
      'foodType': foodType,
      'lifeStage': lifeStage,
      'breedSize': breedSize,
      'specialDiet': specialDiet,
      'ingredient': ingredient,
      'suitableFor': suitableFor,
    };
  }
}
