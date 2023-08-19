import 'package:get/get.dart';
import 'package:task_platina_mobile/controllers/controllers.dart';

import '../core/base/core_controller.dart';

class CustomSearchController extends CoreController {
  @override
  void onInit() {
    print('SearchController');
    print(Get.find<PopularController>().postModels);
    postModels.addAll(Get.find<PopularController>().postModels);
    super.onInit();
  }
}
