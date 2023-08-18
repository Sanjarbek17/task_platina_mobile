// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/color_constants.dart';

class TemplateCategory extends StatelessWidget {
  final String text;
  final Widget child;

  const TemplateCategory({
    super.key,
    required this.text,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      decoration: ShapeDecoration(color: Colors.white, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                SvgPicture.asset('assets/images/bullet_icon.svg', color: blue),
                const SizedBox(width: 8),
                Text(text, style: const TextStyle(color: Color(0xFF1D3068), fontSize: 18, fontFamily: 'SF Pro Display', fontWeight: FontWeight.w700)),
                const Spacer(),
                SvgPicture.asset('assets/images/arrow_left.svg', color: blue),
              ],
            ),
          ),
          const SizedBox(height: 16),
          child,
        ],
      ),
    );
  }
}
