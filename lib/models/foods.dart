import 'dart:math';

class Food {
  int? id;
  String name;
  String urlName;
  Duration duration; // thời gian chế biến món ăn
  Complexity? complexity;
  List<String>? ingredients = <String>[];
  int? categoryId;
  // constructor
  Food({
    required this.name,
    required this.urlName,
    required this.duration,
    this.complexity,
    this.ingredients,
    this.categoryId,
  }) {
    id = Random().nextInt(1000);
  }
}

enum Complexity { Simple, Medium, Hard }
