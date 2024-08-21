class ProductNutrition {
  final String protein;
  final String fat;
  final String fiber;
  final String moisture;

  ProductNutrition(
      {required this.protein,
      required this.fat,
      required this.fiber,
      required this.moisture});

  factory ProductNutrition.fromJson(Map<String, dynamic> json) {
    return ProductNutrition(
      protein: json['protein'] as String,
      fat: json['fat'] as String,
      fiber: json['fiber'] as String,
      moisture: json['moisture'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'protein': protein,
      'fat': fat,
      'fiber': fiber,
      'moisture': moisture,
    };
  }
}
