import 'package:get/get.dart';

import 'controllers/controllers.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PopularController>(() => PopularController());
    Get.lazyPut<AuthorController>(() => AuthorController());
    Get.lazyPut<ArticlesController>(() => ArticlesController());
    Get.lazyPut<CategoryController>(() => CategoryController());
    Get.lazyPut<BiznesController>(() => BiznesController());
    Get.lazyPut<CustomSearchController>(() => CustomSearchController());
  }
}
