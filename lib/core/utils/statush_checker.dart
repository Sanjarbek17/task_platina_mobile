import 'package:flutter/material.dart';

import '../base/core_controller.dart';

Widget statusChecker(CoreController controller) {
  if (controller.postModels.isEmpty) {
    controller.loadData('/popular-posts/');
  }
  if (controller.status.isLoading) {
    return const Center(child: CircularProgressIndicator());
  }
  if (controller.status.isError) {
    return const Center(child: Text('Error'));
  }
  return const SizedBox();
}