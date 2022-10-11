part of omniversify_core;

class OmniversalHomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<OmniversalHomeController>(
      OmniversalHomeController(),
    );
  }
}



