import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_platina_mobile/models/currency_model.dart';
import 'package:task_platina_mobile/providers/currency_provider.dart';

import 'cure_widget.dart';

class CurseChild extends StatelessWidget {
  const CurseChild({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.only(bottom: 16.0),
      child: Consumer<CurrencyProvider>(
        builder: (context, watch, child) {
          if (watch.currencyModels.isEmpty) {
            return const SizedBox();
          }
          List<CurrencyModel> curry = watch.currencyModels;
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CurseWidget(code: curry[1]), 
              CurseWidget(code: curry[2]), 
            ],
          );
        }
      ),
    );
  }
}
