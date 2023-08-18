import 'package:flutter/material.dart';
import 'package:task_platina_mobile/widgets/time_widget.dart';

class SmallCard extends StatelessWidget {
  const SmallCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          const Expanded(
            flex: 6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Иқтисодиётимиздаги “саратон”дан қачон қутуламиз?',
                  style: TextStyle(
                    color: Color(0xFF1D3068),
                    fontSize: 16,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 10),
                TimeWidget(),
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Image.asset('assets/images/second_image.png'),
          )
        ],
      ),
    );
  }
}
