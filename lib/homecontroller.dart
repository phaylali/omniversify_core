
part of omniversify_core;



class OmniversalHomeController extends GetxController {
  static OmniversalHomeController instance = Get.find();

  final storage = GetStorage();
  RxInt pageselected = 0.obs;
  RxBool navbar = true.obs;

  var ar = const Locale('ar', 'MA');
  var us = const Locale('en', 'US');
  

  
/*
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }*/

  switchLang() {
    if (Get.locale == us) {
      Get.updateLocale(ar);
      storage.write('langCode', 'ar');
      storage.write('countryCode', 'MA');
    } else {
      Get.updateLocale(us);
      storage.write('langCode', 'en');
      storage.write('countryCode', 'US');
    }
    update();
  }

  majorUpdate() {
    Get.forceAppUpdate();
  }
}