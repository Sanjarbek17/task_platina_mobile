import '../core/base/core_controller.dart';

class CategoryController extends CoreController {

  @override
  void onInit() {
    loadData('/posts/category/davlat-xaridlari/');
    super.onInit();
  }
}
