import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../../controllers/language_controller.dart';
import '../../models/weather_model.dart';
import '../../providers/weather_provider.dart';

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
      padding: const EdgeInsets.symmetric(horizontal: 5),
      margin: const EdgeInsets.only(bottom: 16),
      child: Consumer<WeatherProvider>(builder: (context, watch, child) {
        if (watch.models.isEmpty) {
          return const Center(child: Text('Nothing to show'));
        }
        List<WeatherModel> models = watch.models;
        LocalizationController loc = Get.find();
        return ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: models.length > 7 ? 7 : models.length,
          itemBuilder: (BuildContext context, int index) {
            WeatherModel model = models[index];
            return SizedBox(
              width: 90,
              height: 140,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(DateFormat('dd MMMM', loc.locale.languageCode).format(model.date), style: const TextStyle(color: Color(0xFFA9AABC), fontSize: 12, fontFamily: 'SF Pro Display', fontWeight: FontWeight.w500)),
                  const SizedBox(height: 3),
                  Text(DateFormat('EEEEE', loc.locale.languageCode).format(model.date).capitalize ?? '', style: const TextStyle(color: Color(0xFF1D3068), fontSize: 14, fontFamily: 'SF Pro Display', fontWeight: FontWeight.w500)),
                  // const SizedBox(height: 10),
                  CachedNetworkImage(imageUrl: model.imgUrl, width: 65, height: 65),
                  // const SizedBox(height: 10),
                  Text('${model.minTemp}°  ${model.maxTemp}° ', style: const TextStyle(color: Color(0xFF1D3068), fontSize: 12, fontFamily: 'SF Pro Display', fontWeight: FontWeight.w500)),
                ],
              ),
            );
          },
        );
      }),
    );
  }
}
