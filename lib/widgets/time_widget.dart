
import 'package:flutter/cupertino.dart';

import '../constants/color_constants.dart';

class TimeWidget extends StatelessWidget {
  const TimeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        // TODO: localize this text
        Text('Жамият', style: TextStyle(color: jamiyat, fontSize: 12, fontFamily: 'SF Pro Display', fontWeight: FontWeight.w500)),
        SizedBox(width: 14),
        // TODO: localize this text
        Text('20 дақиқа аввал', style: TextStyle(color: Color(0xFFA9AABC), fontSize: 12, fontFamily: 'SF Pro Display', fontWeight: FontWeight.w500)),
      ],
    );
  }
}