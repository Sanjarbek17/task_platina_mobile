import 'package:flutter/material.dart';

import '../../constants/color_constants.dart';

class BigCard3 extends StatelessWidget {
  final bool isNews;

  const BigCard3({
    super.key,
    this.isNews = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  'assets/images/first_image.png',
                  width: MediaQuery.of(context).size.width - 32,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 15),
              const Text('Қўрқув, ҳаяжон, ўзига ишонч ёки ҳеч нарсани ҳис қилмаслик (фотоҳикоя)', style: TextStyle(color: blue, fontSize: 18, fontFamily: 'SF Pro Display', fontWeight: FontWeight.w700)),
            ],
          )
        ],
      ),
    );
  }
}
