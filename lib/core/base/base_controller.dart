import 'package:get/get.dart';

import '../network/rest_client.dart';

class BaseController extends GetxController {
  late RestClient restClient;

  @override
  onInit() {
    super.onInit();
    restClient = Get.find();
  }
}
