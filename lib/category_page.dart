import 'package:flutter/cupertino.dart';

import 'package:flutter_app_do_an/category_item.dart';
import './fake_data.dart';

class CategoryPage extends StatelessWidget {
  static const String routeName = '/CategoryPage';

  const CategoryPage({super.key});
  @override
  Widget build(BuildContext context) {
    return GridView(
      // layout
      padding: const EdgeInsets.all(10),
      // ignore: sort_child_properties_last
      children: FAKE_CATEGORY
          .map(
            (e) => CategoryItem(category: e),
          )
          .toList(),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 350, // chiều rộng của box
        childAspectRatio: 3 /
            2, // tỉ lệ chiều rộng và cao, rộng 3 phần thì cao 2 phần của box
        crossAxisSpacing: 5, // độ rộng theo chiều dọc của các box
        mainAxisSpacing: 5, // độ rộng theo chiều ngang của các box
      ),
    );
  }
}
