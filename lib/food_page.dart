import 'package:flutter/material.dart';
import 'package:flutter_app_do_an/fake_data.dart';
import 'package:flutter_app_do_an/models/category.dart';
import 'package:flutter_app_do_an/models/foods.dart';
import 'detail_food_page.dart';

class FoodsPage extends StatelessWidget {
  static const String routeName = '/FoodsPage';
  Category? category;
  FoodsPage({super.key, this.category});
  @override
  Widget build(BuildContext context) {
    // khai báo arguments từ router để lấy data
    Map<String, Category>? arguments =
        ModalRoute.of(context)?.settings.arguments as Map<String, Category>?;

    // lấy data từ dataCategory trong router ra
    category = arguments!['dataCategory'];
    List<Food> foods =
        FAKE_FOODS.where((food) => food.categoryId == category!.id).toList();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Food page"),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: foods.length,
          itemBuilder: (context, index) {
            Food food = foods[index];
            return Container(
              padding: const EdgeInsets.all(10),
              child: InkWell(
                onTap: () {
                  // print(food.name);
                  // Navigator.of(context).push(MaterialPageRoute(
                  //     builder: (context) => DetailFoodPage()));

                  // Navigate
                  // cách 1
                  // Navigator.of(context).push(MaterialPageRoute(
                  //     builder: (context) => FoodsPage(category: category)));
                  // cách 2
                  Navigator.pushNamed(
                    context,
                    DetailFoodPage.routeName,
                    arguments: {
                      'dataFood': food
                    }, // gán data cần truyền vào dataCategory
                  );
                },
                splashColor:
                    const Color.fromARGB(137, 255, 0, 0), // nháy màu khi ấn vào
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(20.0),
                    bottomRight: Radius.circular(30.0),
                    bottomLeft: Radius.circular(40.0),
                  ),
                  child: Image.network(food.urlName),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
