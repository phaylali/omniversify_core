part of omniversify_core;

/// Initial binding of the homecontroller
class OmniversalHomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<OmniversalHomeController>(
      OmniversalHomeController(),
    );
  }
}
