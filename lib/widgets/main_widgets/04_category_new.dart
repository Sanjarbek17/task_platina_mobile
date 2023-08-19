import 'package:flutter/material.dart';

import '../big_card/big_card2.dart';
import '../other_widgets/small_card.dart';
import '../other_widgets/template_category.dart';

class CategoryNews extends StatelessWidget {
  const CategoryNews({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TemplateCategory(
      // TODO: localize this text
      text: 'Давлат харидлари',
      child: Column(
        children: [
          const BigCard2(),
          const Divider(height: 35),
          ListView.separated(
            itemBuilder: (context, index) => const SmallCard(),
            separatorBuilder: (context, index) => const Padding(padding: EdgeInsets.symmetric(horizontal: 35.0), child: Divider(height: 35)),
            itemCount: 4,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
          ),
        ],
      ),
    );
  }
}
