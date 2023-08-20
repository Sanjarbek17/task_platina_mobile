import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WeatherWidget extends StatelessWidget {
  const WeatherWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      color: Colors.white,
      padding: const EdgeInsets.all(16.0),
      margin: const EdgeInsets.only(bottom: 16),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: const EdgeInsets.only(right: 8),
            width: 70,
            height: 80,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text('16 янв', style: TextStyle(color: Color(0xFFA9AABC), fontSize: 12, fontFamily: 'SF Pro Display', fontWeight: FontWeight.w500)),
                const SizedBox(height: 3),
                const Text('Кеча', style: TextStyle(color: Color(0xFF1D3068), fontSize: 16, fontFamily: 'SF Pro Display', fontWeight: FontWeight.w500)),
                const SizedBox(height: 10),
                SvgPicture.asset('assets/images/sun.svg'),
                const SizedBox(height: 10),
                const Text('-7° -18° ', style: TextStyle(color: Color(0xFF1D3068), fontSize: 14, fontFamily: 'SF Pro Display', fontWeight: FontWeight.w500)),
              ],
            ),
          );
        },
      ),
    );
  }
}
