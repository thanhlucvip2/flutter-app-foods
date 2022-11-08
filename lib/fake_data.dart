import 'package:flutter/material.dart';
import './models/category.dart';
import './models/foods.dart';

List<Category> FAKE_CATEGORY = [
  Category(id: 1, content: 'Japanese\'s Foods', color: Colors.deepOrange),
  Category(id: 2, content: 'Pizza', color: Colors.teal),
  Category(id: 3, content: 'Humburgers', color: Colors.cyanAccent),
  Category(id: 4, content: 'Humburgers', color: Colors.blue),
  Category(id: 5, content: 'Humburgers', color: Colors.red),
  Category(id: 6, content: 'Japanese\'s Foods', color: Colors.deepOrange),
  Category(id: 7, content: 'Pizza', color: Colors.teal),
  Category(id: 8, content: 'Humburgers', color: Colors.cyanAccent),
  Category(id: 9, content: 'Humburgers', color: Colors.blue),
  Category(id: 10, content: 'Humburgers', color: Colors.red),
  Category(id: 11, content: 'Japanese\'s Foods', color: Colors.deepOrange),
  Category(id: 12, content: 'Pizza', color: Colors.teal),
  Category(id: 13, content: 'Humburgers', color: Colors.cyanAccent),
  Category(id: 14, content: 'Humburgers', color: Colors.blue),
  Category(id: 15, content: 'Humburgers', color: Colors.red),
];

List<Food> FAKE_FOODS = [
  Food(
    name: 'su-shi 2 ',
    urlName:
        'https://beptueu.vn/hinhanh/tintuc/top-15-hinh-anh-mon-an-ngon-viet-nam-khien-ban-khong-the-roi-mat-1.jpg',
    duration: const Duration(minutes: 25),
    complexity: Complexity.Medium,
    ingredients: ['Su-shi', 'Nori', 'Condiment'],
    categoryId: 1,
  ),
  Food(
    name: 'sasimi',
    urlName:
        'https://cafefcdn.com/2019/2/25/photo-1-1551082197243762701658.jpg',
    duration: const Duration(minutes: 11),
    complexity: Complexity.Hard,
    ingredients: ['Su-shi', 'Nori', 'Condiment'],
    categoryId: 2,
  ),
  Food(
    name: 'phở',
    urlName:
        'https://beptueu.vn/hinhanh/tintuc/banh-cuon-hinh-anh-mon-an-dac-san-viet-nam.jpg',
    duration: const Duration(minutes: 25),
    complexity: Complexity.Hard,
    ingredients: ['Su-shi', 'Nori', 'Condiment'],
    categoryId: 3,
  ),
  Food(
    name: 'sơm',
    urlName:
        'https://massageishealthy.com/wp-content/uploads/2019/06/hinh-anh-do-an-hinh-anh-mon-an-thuc-an-ngon-dep-viet-nam-the-gioi-1.jpg',
    duration: const Duration(minutes: 25),
    complexity: Complexity.Simple,
    ingredients: ['Su-shi', 'Nori', 'Condiment'],
    categoryId: 4,
  ),
  Food(
    name: 'su-shi 2 ',
    urlName:
        'https://bepvang.org.vn/Userfiles/Upload/images/Download/2017/2/24/268f41e9fdcd49999f327632ed207db1.jpg',
    duration: const Duration(minutes: 25),
    complexity: Complexity.Simple,
    ingredients: ['Su-shi', 'Nori', 'Condiment'],
    categoryId: 1,
  ),
  Food(
    name: 'sasimi',
    urlName:
        'https://chuphinhmonan.com/wp-content/uploads/2017/03/dakgalbi-1-2.jpg',
    duration: const Duration(minutes: 11),
    complexity: Complexity.Medium,
    ingredients: ['Su-shi', 'Nori', 'Condiment'],
    categoryId: 2,
  ),
  Food(
    name: 'phở',
    urlName:
        'https://chuphinhmenu.com/wp-content/uploads/2019/05/chup-hinh-mon-an-menu-nha-hang-quan-2-2019.jpg',
    duration: const Duration(minutes: 25),
    complexity: Complexity.Medium,
    ingredients: ['Su-shi', 'Nori', 'Condiment'],
    categoryId: 3,
  ),
  Food(
    name: 'dasdas',
    urlName:
        'https://chupanhmonan.com/wp-content/uploads/2020/08/117665956_661101834505705_4916879163493555571_o-1024x683.jpg',
    duration: const Duration(minutes: 25),
    complexity: Complexity.Medium,
    ingredients: ['Su-shi', 'Nori', 'Condiment'],
    categoryId: 4,
  ),
];
