import 'package:flutter/material.dart';

import '../../constants/drawer_constant.dart';
import 'category_text.dart';

class CategoryBuilder extends StatefulWidget {
  const CategoryBuilder({
    super.key,
  });

  @override
  State<CategoryBuilder> createState() => _CategoryBuilderState();
}

class _CategoryBuilderState extends State<CategoryBuilder> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: category.length,
      itemBuilder: (context, index) {
        return CategoryText(
          text: category[index]['text'],
          color: category[index]['color'],
          color2: category[index]['color2'],
          isSelected: index == selectedIndex,
          onPressed: () {
            setState(() {
              selectedIndex = index;
            });
          },
        );
      },
    );
  }
}
