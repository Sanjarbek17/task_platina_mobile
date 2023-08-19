// ignore_for_file: file_names

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_platina_mobile/core/utils/statush_checker.dart';
import 'package:task_platina_mobile/models/post_model.dart';
import 'package:task_platina_mobile/widgets/other_widgets/template_category.dart';

import '../../controllers/biznes_controller.dart';
import '../big_card/big_card3.dart';

class BiznesNews extends StatelessWidget {
  const BiznesNews({
    super.key,
  });

  BiznesController get controller => Get.find<BiznesController>();

  @override
  Widget build(BuildContext context) {
    return TemplateCategory(
      text: 'Бизнес',
      child: Obx(() {
        statusChecker(controller);
        List<PostModel> postModels = controller.postModels;
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: CarouselSlider(
            items: postModels.map((e) => BigCard3(postModel: e)).toList(),
            options: CarouselOptions(
              height: 310,
              viewportFraction: 0.8,
              padEnds: false,
              enableInfiniteScroll: false,
            ),
          ),
        );
      }),
    );
  }
}
