import 'routes.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController instance = Get.find();

  RxInt pageselected = 0.obs;
  RxString boats = '0'.obs;
  RxString sailors = '0'.obs;

  setupRoute() {
    switch (Get.currentRoute) {
      case AppPages.initial:
        pageselected.value = 0;
        break;
      case AppPages.settings:
        pageselected.value = 1;
        break;
      case AppPages.unknown:
        pageselected.value = 2;
        break;
    }
  }

  majorUpdate() {
    Get.forceAppUpdate();
  }
}
