// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import 'package:task_platina_mobile/controllers/articles_controller.dart';
import 'package:task_platina_mobile/models/post_model.dart';
import 'package:task_platina_mobile/widgets/placeholders/big_placeholder.dart';

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
      text: 'Maqolalar'.tr,
      child: Obx(() {
        if (controller.postModels.isEmpty) {
          controller.onInit();
        }
        if (controller.status.isLoading) {
          return Shimmer.fromColors(
            baseColor: Colors.grey.shade300,
            highlightColor: Colors.grey.shade100,
            enabled: true,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  BigPlaceholder(),
                  Divider(),
                  BigPlaceholder(),
                ],
              ),
            ),
          );
        }
        if (controller.status.isError) {
          return const Center(child: Text('Error'));
        }
        List<PostModel> postModels = controller.postModels;
        return ListView.separated(
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
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
