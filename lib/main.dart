import 'package:flutter/material.dart';
import 'package:flutter_app_do_an/category_page.dart';
import 'package:flutter_app_do_an/detail_food_page.dart';
import 'package:flutter_app_do_an/food_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        FoodsPage.routeName: (context) => FoodsPage(),
        CategoryPage.routeName: (context) => CategoryPage(),
        DetailFoodPage.routeName: (context) => DetailFoodPage()
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('data'),
        ),
        body: const Center(
          child: CategoryPage(),
        ),
      ),
    );
  }
}
