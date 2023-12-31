import 'package:flutter/material.dart';

import '../../constants/color_constants.dart';

class SocialWidget extends StatelessWidget {
  final String text;
  final Widget icon;
  final VoidCallback? onTap;

  const SocialWidget({
    super.key,
    required this.text,
    required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: bg,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            const SizedBox(width: 8),
            Text(text, style: const TextStyle(color: blue, fontSize: 13, fontFamily: 'SF Pro Display', fontWeight: FontWeight.w500)),
          ],
        ),
      ),
    );
  }
}
