// ignore_for_file: file_names

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import 'package:task_platina_mobile/models/post_model.dart';
import 'package:task_platina_mobile/widgets/other_widgets/template_category.dart';

import '../../controllers/biznes_controller.dart';
import '../big_card/big_card3.dart';
import '../placeholders/slider_placeholder.dart';

class BiznesNews extends StatelessWidget {
  const BiznesNews({
    super.key,
  });

  BiznesController get controller => Get.find<BiznesController>();

  @override
  Widget build(BuildContext context) {
    return TemplateCategory(
      text: 'Biznes'.tr,
      child: Obx(() {
        if (controller.postModels.isEmpty) {
          controller.onInit();
        }
        if (controller.status.isLoading) {
          return Shimmer.fromColors(
            baseColor: Colors.grey.shade300,
            highlightColor: Colors.grey.shade100,
            enabled: true,
            child: const SliderPlaceholder(),
          );
        }
        if (controller.status.isError) {
          return const Center(child: Text('Error'));
        }
        List<PostModel> postModels = controller.postModels;
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: CarouselSlider(
            items: postModels.map((e) => BigCard3(postModel: e)).toList(),
            options: CarouselOptions(height: 310, viewportFraction: 0.85, padEnds: false, enableInfiniteScroll: false),
          ),
        );
      }),
    );
  }
}
