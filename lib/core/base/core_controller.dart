import 'dart:ui';

import 'package:get/get.dart';
import 'package:dio/dio.dart' as d;

import '../../models/post_model.dart';
import '../../models/search_model.dart';
import '../network/rest_client.dart';
import '../base/base_controller.dart';

class CoreController extends BaseController with StateMixin {
  final postModels = <PostModel>[].obs;
  final searchModels = <SearchModel>[].obs;

  Future<void> loadData(String url) async {
    change(null, status: RxStatus.loading());
    update();
    try {
      final result = await restClient.request(url, Method.GET, null);

      if (result != null) {
        if (result is d.Response) {
          final donors = result.data['results'] as List<dynamic>;
          postModels.clear();
          postModels.addAll(donors.map((e) => PostModel.fromJson(e)).toList());
          change(postModels, status: RxStatus.success());
        }
      } else {
        change(null, status: RxStatus.empty());
      }
    } on Exception catch (e) {
      change('asdf', status: RxStatus.error(e.toString()));
      update();
      Get.showSnackbar(GetSnackBar(
        message: "My $e",
        duration: const Duration(milliseconds: 3000),
      ));
    }
  }

  Future<void> searchData(String url) async {
    change(null, status: RxStatus.loading());
    try {
      final result = await restClient.searchRequest(url, Method.GET, null);

      if (result != null) {
        if (result is d.Response) {
          final donors = result.data['results'] as List<dynamic>;
          postModels.clear();
          postModels.addAll(donors.map((e) => SearchModel.fromJson(e)).toList());
          change(searchModels, status: RxStatus.success());
        }
      } else {
        change(null, status: RxStatus.empty());
      }
    } on Exception catch (e) {
      change(null, status: RxStatus.error(e.toString()));
      Get.showSnackbar(GetSnackBar(
        message: "$e",
        duration: const Duration(milliseconds: 3000),
      ));
    }
  }

  @override
  void disposeId(Object id) {}

  @override
  bool get hasListeners => throw UnimplementedError();

  @override
  int get listeners => throw UnimplementedError();

  @override
  void notifyChildrens() {}

  @override
  void refresh() {}

  @override
  void refreshGroup(Object id) {}

  @override
  void removeListener(VoidCallback listener) {}

  @override
  void removeListenerId(Object id, VoidCallback listener) {}
}
