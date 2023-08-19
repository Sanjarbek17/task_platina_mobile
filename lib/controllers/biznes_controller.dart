import 'package:get/get.dart';
import 'package:dio/dio.dart' as d;

import '../core/base/core_controller.dart';
import '../core/network/rest_client.dart';
import '../models/post_model.dart';

class BiznesController extends CoreController {

  @override
  void onInit() {
    loadData('/posts/business/');
    super.onInit();
  }

  @override
  Future<void> loadData(String url) async {
    change(null, status: RxStatus.loading());
    try {
      final result = await restClient.request(url, Method.GET, null);

      if (result != null) {
        if (result is d.Response) {
          final donors = result.data as List<dynamic>;
          postModels.clear();
          postModels.addAll(donors.map((e) => PostModel.fromJson(e)).toList());
          change(postModels, status: RxStatus.success());
        }
      } else {
        change(null, status: RxStatus.empty());
      }
    } on Exception catch (e) {
      change('asdf', status: RxStatus.error(e.toString()));
      Get.showSnackbar(GetSnackBar(
        message: "$e",
        duration: const Duration(milliseconds: 3000),
      ));
    }
  }
}
