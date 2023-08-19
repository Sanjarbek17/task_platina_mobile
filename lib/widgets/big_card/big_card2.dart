import 'package:flutter/material.dart';
import 'package:task_platina_mobile/widgets/other_widgets/time_widget.dart';

import '../../constants/color_constants.dart';

class BigCard2 extends StatelessWidget {
  const BigCard2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 8.0, right: 8.0),
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
                  // width: MediaQuery.of(context).size.width - 32,
                  fit: BoxFit.fitHeight,
                ),
              ),
              const SizedBox(height: 15),
              const Text('Қўрқув, ҳаяжон, ўзига ишонч ёки ҳеч нарсани ҳис қилмаслик (фотоҳикоя)', style: TextStyle(color: blue, fontSize: 18, fontFamily: 'SF Pro Display', fontWeight: FontWeight.w700)),
              const SizedBox(height: 10),
              const TimeWidget(),
            ],
          )
        ],
      ),
    );
  }
}
