import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/weather_model.dart';
import '../../providers/weather_provider.dart';

class MainWeatherWidget extends StatefulWidget {
  const MainWeatherWidget({super.key});

  @override
  State<MainWeatherWidget> createState() => _MainWeatherWidgetState();
}

class _MainWeatherWidgetState extends State<MainWeatherWidget> {
  @override
  void initState() {
    super.initState();
    context.read<WeatherProvider>().getModels();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<WeatherProvider>(builder: (context, watch, child) {
      if (watch.models.isEmpty) {
        return const SizedBox();
      }
      WeatherModel weat = watch.models.first;
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 1),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CachedNetworkImage(imageUrl: weat.imgUrl, width: 40, height: 40),
            Text('+${weat.maxTemp} °C', style: const TextStyle(color: Color(0xFF1D3068), fontSize: 17, fontFamily: 'SF Pro Display', fontWeight: FontWeight.w500)),
          ],
        ),
      );
    });
  }
}
