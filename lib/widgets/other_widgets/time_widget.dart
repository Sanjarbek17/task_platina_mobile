import 'package:flutter/cupertino.dart';

import '../../constants/color_constants.dart';

class TimeWidget extends StatelessWidget {
  final String? category;

  const TimeWidget({
    super.key,
    this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        // TODO: localize this text
        if (category != null) const Text('Жамият', style: TextStyle(color: jamiyat, fontSize: 12, fontFamily: 'SF Pro Display', fontWeight: FontWeight.w500)),
        if (category != null) const SizedBox(width: 14),
        // TODO: localize this text
        const Text('20 дақиқа аввал', style: TextStyle(color: Color(0xFFA9AABC), fontSize: 12, fontFamily: 'SF Pro Display', fontWeight: FontWeight.w500)),
      ],
    );
  }
}
