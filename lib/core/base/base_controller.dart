import 'package:get/get.dart';

import '../network/rest_client.dart';

class BaseController extends GetxController {
  RestClient restClient = RestClient().init();

  @override
  onInit() {
    super.onInit();
    restClient = Get.find();
  }
}
