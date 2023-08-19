import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/controllers.dart';
import '../../controllers/language_controller.dart';
import 'local_text.dart';

class LanguageWidget extends StatelessWidget {
  final LocalizationController controller;
  const LanguageWidget({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: controller.languages
            .map(
              (language) => LocalText(
                text: language.imageUrl,
                isSelected: controller.selectedIndex == controller.languages.indexOf(language) ? true : false,
                onPressed: () {
                  controller.setLanguage(Locale(language.languageCode, language.countryCode));
                  controller.setSelectedIndex(controller.languages.indexOf(language));

                  Navigator.pop(context);
                  Get.find<ArticlesController>().onInit();
                  Get.find<AuthorController>().onInit();
                  Get.find<CategoryController>().onInit();
                  Get.find<PopularController>().onInit();
                  
                },
              ),
            )
            .toList());
  }
}
