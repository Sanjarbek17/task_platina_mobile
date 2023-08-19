import '../core/base/core_controller.dart';

class AuthorController extends CoreController {

  @override
  void onInit() {
    loadData('/posts/author-offered/');
    super.onInit();
  }
}
