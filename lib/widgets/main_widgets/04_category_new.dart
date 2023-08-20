// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import 'package:task_platina_mobile/controllers/controllers.dart';
import 'package:task_platina_mobile/models/post_model.dart';

import '../big_card/big_card2.dart';
import '../other_widgets/small_card.dart';
import '../other_widgets/template_category.dart';
import '../placeholders/big_placeholder.dart';
import '../placeholders/small_placeholder.dart';

class CategoryNews extends StatefulWidget {
  const CategoryNews({
    super.key,
  });

  @override
  State<CategoryNews> createState() => _CategoryNewsState();
}

class _CategoryNewsState extends State<CategoryNews> {
  CategoryController controller = Get.find<CategoryController>();
  @override
  Widget build(BuildContext context) {
    return TemplateCategory(
      text: 'Davlat Xaridlari'.tr,
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
                  SmallPlaceholder(),
                  Divider(),
                  SmallPlaceholder(),
                ],
              ),
            ),
          );
        } else if (controller.status.isError) {
          return const Center(child: Text('Error'));
        }
        List<PostModel> postModels = controller.postModels;
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            children: [
              BigCard2(postModel: postModels[0]),
              const Divider(height: 35),
              ListView.separated(
                itemBuilder: (context, index) => SmallCard(
                  postModel: postModels[index + 1],
                ),
                separatorBuilder: (context, index) => const Padding(padding: EdgeInsets.symmetric(horizontal: 35.0), child: Divider(height: 35)),
                itemCount: postModels.length > 4 ? 4 : postModels.length - 1,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
              ),
            ],
          ),
        );
      }),
    );
  }
}
