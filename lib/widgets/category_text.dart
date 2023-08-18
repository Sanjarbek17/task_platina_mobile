import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_platina_mobile/constants/color_constants.dart';

class CategoryText extends StatelessWidget {
  final String text;
  final Color color;
  final Color color2;
  final bool isSelected;
  final VoidCallback? onPressed;

  const CategoryText({
    super.key,
    required this.text,
    required this.color,
    required this.color2,
    required this.isSelected,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: ShapeDecoration(
          color: isSelected ? color2 : Colors.transparent,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              'assets/images/bullet_icon.svg',
              color: isSelected ? color : null,
            ),
            const SizedBox(width: 8),
            Text(
              text,
              style: TextStyle(
                color: blue,
                fontSize: 17,
                fontFamily: 'SF Pro Display',
                fontWeight: isSelected ? FontWeight.w700 : FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
