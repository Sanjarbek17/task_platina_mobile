import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'big_placeholder.dart';

class SliderPlaceholder extends StatelessWidget {
  const SliderPlaceholder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: CarouselSlider(
        items: const [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: BigPlaceholder(),
          ),
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: BigPlaceholder(),
          ),
        ],
        options: CarouselOptions(height: 310, viewportFraction: 0.85, padEnds: false, enableInfiniteScroll: false),
      ),
    );
  }
}
