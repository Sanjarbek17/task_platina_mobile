import '../core/base/core_controller.dart';

class BiznesController extends CoreController {

  @override
  void onInit() {
    loadData('/posts/business/');
    super.onInit();
  }
}
