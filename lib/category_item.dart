import 'package:flutter_app_do_an/food_page.dart';
import 'package:flutter_app_do_an/models/category.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  Category category;
  CategoryItem({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    Color? _color = category.color;
    return InkWell(
      onTap: () {
        print(category.content); // hàm thực hiện khi ấn vào box
        // Navigate
        // cách 1
        // Navigator.of(context).push(MaterialPageRoute(
        //     builder: (context) => FoodsPage(category: category)));
        // cách 2
        Navigator.pushNamed(
          context,
          FoodsPage.routeName,
          arguments: {
            'dataCategory': category
          }, // gán data cần truyền vào dataCategory
        );
      },
      splashColor: const Color.fromARGB(137, 255, 0, 0), // nháy màu khi ấn vào
      child: Container(
        decoration: BoxDecoration(
          color: category.color,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            category.content,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
