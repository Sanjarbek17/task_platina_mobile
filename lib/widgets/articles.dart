
import 'package:flutter/material.dart';

import 'big_card/big_card3.dart';
import 'template_category.dart';

class Articles extends StatelessWidget {
  const Articles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TemplateCategory(
      // TODO: localize this text
      text: 'Мақолалар',
      child: ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 3,
        itemBuilder: (context, index) => const BigCard3(),
        separatorBuilder: (context, index) => const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Divider(height: 35),
        ),
      ),
    );
  }
}
