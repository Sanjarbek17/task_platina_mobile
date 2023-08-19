import '../core/base/core_controller.dart';

class PopularController extends CoreController {

  @override
  void onInit() {
    loadData('/popular-posts/');
    super.onInit();
  }
}
