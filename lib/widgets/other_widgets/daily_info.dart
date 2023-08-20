import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'cure_widget.dart';

class DailyInfo extends StatelessWidget {
  final VoidCallback? curseToggle;
  final VoidCallback? weatherToggle;

  const DailyInfo({
    super.key,
    this.curseToggle,
    this.weatherToggle,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: curseToggle,
            child: const CurseWidget(),
          ),
          InkWell(
            onTap: weatherToggle,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset('assets/images/weather.svg'),
                  const SizedBox(width: 8),
                  const Text('+19 °C', style: TextStyle(color: Color(0xFF1D3068), fontSize: 17, fontFamily: 'SF Pro Display', fontWeight: FontWeight.w500)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
