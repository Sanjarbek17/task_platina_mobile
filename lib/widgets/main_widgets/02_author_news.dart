// ignore_for_file: file_names

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import 'package:task_platina_mobile/controllers/author_controller.dart';
import 'package:task_platina_mobile/models/post_model.dart';

import '../big_card/big_card2.dart';
import '../other_widgets/template_category.dart';
import '../placeholders/slider_placeholder.dart';

class AuthorNews extends StatelessWidget {
  const AuthorNews({
    super.key,
  });

  AuthorController get controller => Get.find<AuthorController>();

  @override
  Widget build(BuildContext context) {
    return TemplateCategory(
      text: 'Muharrir tanlovi'.tr,
      child: Obx(
        () {
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
              items: postModels.map((e) => BigCard2(postModel: e)).toList(),
              options: CarouselOptions(height: 310, viewportFraction: 0.85, padEnds: false, enableInfiniteScroll: false),
            ),
          );
        },
      ),
    );
  }
}

