
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CurseWidget extends StatelessWidget {
  const CurseWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const CircleAvatar(
            radius: 12,
            backgroundImage: AssetImage('assets/images/USD.png'),
          ),
          const SizedBox(width: 8),
          const Text.rich(
            TextSpan(children: [
              TextSpan(text: 'USD\t', style: TextStyle(color: Color(0xFF1D3068), fontSize: 17, fontFamily: 'SF Pro Display', fontWeight: FontWeight.w500)),
              TextSpan(text: '11318.74', style: TextStyle(color: Color(0xFFE50029), fontSize: 17, fontFamily: 'SF Pro Display', fontWeight: FontWeight.w500)),
            ]),
          ),
          const SizedBox(width: 5),
          SvgPicture.asset('assets/images/fall.svg'),
        ],
      ),
    );
  }
}
