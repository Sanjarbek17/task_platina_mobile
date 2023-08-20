import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../models/currency_model.dart';

class CurseWidget extends StatelessWidget {
  final CurrencyModel code;
  const CurseWidget({
    super.key,
    required this.code,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            radius: 10,
            backgroundImage: AssetImage('assets/images/${code.baseCode}.png'),
          ),
          const SizedBox(width: 8),
          Text.rich(
            TextSpan(children: [
              TextSpan(text: '${code.baseCode}\t', style: const TextStyle(color: Color(0xFF1D3068), fontSize: 14, fontFamily: 'SF Pro Display', fontWeight: FontWeight.w500)),
              TextSpan(text: code.rate.toStringAsFixed(2), style: const TextStyle(color: Color(0xFFE50029), fontSize: 14, fontFamily: 'SF Pro Display', fontWeight: FontWeight.w500)),
            ]),
          ),
          const SizedBox(width: 5),
          SvgPicture.asset('assets/images/fall.svg'),
        ],
      ),
    );
  }
}
