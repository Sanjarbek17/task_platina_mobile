import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_platina_mobile/models/currency_model.dart';

import '../../providers/currency_provider.dart';
import 'cure_widget.dart';
import 'main_weather_widget.dart';

class DailyInfo extends StatefulWidget {
  final VoidCallback? curseToggle;
  final VoidCallback? weatherToggle;

  const DailyInfo({
    super.key,
    this.curseToggle,
    this.weatherToggle,
  });

  @override
  State<DailyInfo> createState() => _DailyInfoState();
}

class _DailyInfoState extends State<DailyInfo> {
  @override
  void initState() {
    super.initState();
    context.read<CurrencyProvider>().getCurrencies();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CurrencyProvider>(builder: (context, watch, child) {
      if (watch.currencyModels.isEmpty) {
        return const SizedBox();
      }
      CurrencyModel curry = watch.currencyModels.first;
      return SizedBox(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: widget.curseToggle,
              child: CurseWidget(code: curry),
            ),
            InkWell(
              onTap: widget.weatherToggle,
              child: const MainWeatherWidget(),
            ),
          ],
        ),
      );
    });
  }
}
