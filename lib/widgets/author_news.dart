import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'big_card/big_card2.dart';
import 'template_category.dart';

class AuthorNews extends StatelessWidget {
  const AuthorNews({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TemplateCategory(
      text: 'Муҳаррир танлови',
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
