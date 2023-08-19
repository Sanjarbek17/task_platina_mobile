// ignore_for_file: file_names

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_platina_mobile/controllers/author_controller.dart';
import 'package:task_platina_mobile/core/utils/statush_checker.dart';
import 'package:task_platina_mobile/models/post_model.dart';

import '../big_card/big_card2.dart';
import '../other_widgets/template_category.dart';

class AuthorNews extends StatelessWidget {
  const AuthorNews({
    super.key,
  });

  AuthorController get controller => Get.find<AuthorController>();

  @override
  Widget build(BuildContext context) {
    return TemplateCategory(
      text: 'Муҳаррир танлови',
      child: Obx(
        () {
          statusChecker(controller);
          List<PostModel> postModels = controller.postModels;
          return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: CarouselSlider(
                items: postModels.map((e) => BigCard2(postModel: e)).toList(),
                options: CarouselOptions(
                  height: 310,
                  viewportFraction: 0.85,
                  padEnds: false,
                  enableInfiniteScroll: false,
                ),
              ));
        },
      ),
    );
  }
}
