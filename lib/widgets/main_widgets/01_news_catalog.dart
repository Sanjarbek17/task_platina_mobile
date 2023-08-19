import 'package:flutter/material.dart';

import '../big_card/big_card.dart';
import '../other_widgets/small_card.dart';
import '../other_widgets/template_category.dart';

class NewsCatalog extends StatelessWidget {
  const NewsCatalog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TemplateCategory(
      // TODO: localize this text
      text: 'Муҳим янгиликлар',
      child: Column(
        children: [
          const BigCard(),
          const Divider(height: 35),
          ListView.separated(
            itemBuilder: (context, index) => const SmallCard(category: 'Жамият'),
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
