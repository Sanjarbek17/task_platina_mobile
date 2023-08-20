import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../models/currency_model.dart';

class CurrencyProvider with ChangeNotifier {
  Dio dio;

  CurrencyProvider({required this.dio});

  List<String> currencies = ['USD', 'EUR', 'RUB'];
  List<CurrencyModel> currencyModels = [];

  Future<void> getCurrencies() async {
    for (var i in currencies) {
      Response response = await dio.get('https://open.er-api.com/v6/latest/$i');
      currencyModels.add(CurrencyModel.fromJson(response.data));
    }
    notifyListeners();
  }
}
