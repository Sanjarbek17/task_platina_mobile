import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:task_platina_mobile/controllers/language_controller.dart';
import 'package:task_platina_mobile/models/category_model.dart';

import '../../constants/drawer_constant.dart' as constant;

class TimeWidget extends StatelessWidget {
  final CategoryModel? category;
  final DateTime? date;

  const TimeWidget({
    super.key,
    this.category,
    this.date,
  });

  LocalizationController get loc => Get.find();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (category != null)
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(category?.name ?? 'Error', maxLines: 1, style: TextStyle(color: constant.category.firstWhere((element) => element['text'].toString().toLowerCase() == category!.slug, orElse: () => constant.category.first)['color'], fontSize: 12, fontFamily: 'SF Pro Display', fontWeight: FontWeight.w500)),
          ),
        if (category != null) const SizedBox(width: 14),
        if (date != null)
          SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.26,
            child: Text(
              DateFormat('dd MMMM, HH:mm', loc.locale.languageCode).format(date ?? DateTime.now()),
              style: const TextStyle(color: Color(0xFFA9AABC), fontSize: 12, fontFamily: 'SF Pro Display', fontWeight: FontWeight.w500),
            ),
          ),
      ],
    );
  }
}
