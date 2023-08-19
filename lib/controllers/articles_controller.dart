import '../core/base/core_controller.dart';

class ArticlesController extends CoreController {

  @override
  void onInit() {
    loadData('/articles/');
    super.onInit();
  }
}
