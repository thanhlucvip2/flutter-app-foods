import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';

import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_app_do_an/models/foods.dart';

import 'models/category.dart';

class DetailFoodPage extends StatelessWidget {
  static const String routeName = '/FoodDetail';

  DetailFoodPage({super.key});

  Food? foodDetail;
  @override
  Widget build(BuildContext context) {
    Map<String, Food>? arguments =
        ModalRoute.of(context)?.settings.arguments as Map<String, Food>?;

    // lấy data từ dataCategory trong router ra
    foodDetail = arguments!['dataFood']!;
    print(foodDetail!.urlName);
    return Scaffold(
      appBar: AppBar(title: Text("detail food app")),
      body: Column(
        children: [
          Container(
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(20.0),
                bottomRight: Radius.circular(30.0),
                bottomLeft: Radius.circular(40.0),
              ),
              child: Image.network(foodDetail!.urlName),
            ),
          ),
          Text(foodDetail!.name),
          Text(foodDetail!.categoryId.toString()),
          Text(foodDetail!.complexity.toString()),
        ],
      ),
    );
  }
}
