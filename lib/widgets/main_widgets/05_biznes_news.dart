import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:task_platina_mobile/widgets/other_widgets/template_category.dart';

import '../big_card/big_card2.dart';

class BiznesNews extends StatelessWidget {
  const BiznesNews({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TemplateCategory(
      text: 'Бизнес',
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: CarouselSlider(
          items: const [
            BigCard2(),
            BigCard2(),
            BigCard2(),
          ],
          options: CarouselOptions(
            height: 310,
            viewportFraction: 0.8,
            padEnds: false,
            enableInfiniteScroll: false,
          ),
        ),
      ),
    );
  }
}
