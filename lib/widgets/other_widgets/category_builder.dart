import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/color_constants.dart';
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

  List<Map<String, dynamic>> category = [
    {
      'text': 'Siyosat'.tr,
      'color': siyosat,
      'color2': siyosat10,
    },
    {
      'text': 'Jahon',
      'color': jahon,
      'color2': jahon10,
    },
    {
      'text': 'Iqtisod',
      'color': iqtisod,
      'color2': iqtisod10,
    },
    {
      'text': 'Jamiyat',
      'color': jamiyat,
      'color2': jamiyat10,
    },
    {
      'text': 'Maqola',
      'color': maqola,
      'color2': maqola10,
    },
    {
      'text': 'Sport',
      'color': sport,
      'color2': sport10,
    },
    {
      'text': 'Davlat-xaridlari',
      'color': davlat,
      'color2': davlat10,
    },
    {
      'text': 'Tahlil',
      'color': tahlil,
      'color2': tahlil10,
    },
  ];

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
