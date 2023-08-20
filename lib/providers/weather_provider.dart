import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:task_platina_mobile/models/weather_model.dart';

class WeatherProvider with ChangeNotifier {
  Dio dio;

  WeatherProvider({required this.dio});

  List<WeatherModel> models = [];

  Future<void> getModels() async {
    Response r = await dio.get('https://platina.uz/api/weather/forecast.json?q=Uzbekistan&days=7');
    List data = r.data['forecast']['forecastday'] as List;
    models = data.map((e) => WeatherModel.fromJson(e)).toList();
    notifyListeners();
  }
}
