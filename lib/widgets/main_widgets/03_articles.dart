// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_platina_mobile/controllers/articles_controller.dart';
import 'package:task_platina_mobile/core/utils/statush_checker.dart';
import 'package:task_platina_mobile/models/post_model.dart';

import '../big_card/big_card3.dart';
import '../other_widgets/template_category.dart';

class Articles extends StatelessWidget {
  const Articles({
    super.key,
  });

  ArticlesController get controller => Get.find<ArticlesController>();

  @override
  Widget build(BuildContext context) {
    return TemplateCategory(
      // TODO: localize this text
      text: 'Мақолалар',
      child: Obx(() {
        statusChecker(controller);
        List<PostModel> postModels = controller.postModels;
        return ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: postModels.length > 3 ? 3 : postModels.length,
          itemBuilder: (context, index) => BigCard3(
            postModel: postModels[index],
          ),
          separatorBuilder: (context, index) => const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Divider(height: 35),
          ),
        );
      }),
    );
  }
}
