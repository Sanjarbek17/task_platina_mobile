import 'package:flutter/cupertino.dart';
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

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (category != null) Text(category!.name, style: TextStyle(color: constant.category.firstWhere((element) => element['text'].toString().toLowerCase() == category!.slug)['color'], fontSize: 12, fontFamily: 'SF Pro Display', fontWeight: FontWeight.w500)),
        if (category != null) const SizedBox(width: 14),
        // TODO: localize this text and how last update
        if (date != null) Text(date!.day.toString(), style: const TextStyle(color: Color(0xFFA9AABC), fontSize: 12, fontFamily: 'SF Pro Display', fontWeight: FontWeight.w500)),
      ],
    );
  }
}
