// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/popular_controller.dart';
import '../../core/utils/statush_checker.dart';
import '../../models/post_model.dart';
import '../big_card/big_card.dart';
import '../other_widgets/small_card.dart';
import '../other_widgets/template_category.dart';

class NewsCatalog extends StatelessWidget {
  const NewsCatalog({
    super.key,
  });

  PopularController get controller => Get.find();

  @override
  Widget build(BuildContext context) {
    return TemplateCategory(
      // TODO: localize this text
      text: 'Муҳим янгиликлар',
      child: Obx(() {
        statusChecker(controller);
        List<PostModel> postModels = controller.postModels;
        return Column(
          children: [
            BigCard(postModel: postModels.first),
            const Divider(height: 35),
            ListView.separated(
              itemBuilder: (context, index) => SmallCard(postModel: postModels[index + 1]),
              separatorBuilder: (context, index) => const Padding(padding: EdgeInsets.symmetric(horizontal: 35.0), child: Divider(height: 35)),
              itemCount: postModels.length >= 4 ? 3 : postModels.length - 1,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
            ),
          ],
        );
      }),
    );
  }
}
