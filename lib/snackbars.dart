part of omniversify_core;

/// A custom snackbar widget for error
GetSnackBar errorSnack(e) {
  final C = Colorz(Get.context!);
  final T = Textz(Get.context!);
  return GetSnackBar(
    titleText: Text(
      'error'.tr,
      style: T.h4,
      textAlign: TextAlign.center,
    ),
    messageText: Text('$e ', style: T.h5),
    borderColor: C.e,
    backgroundColor: C.e!.withOpacity(0.5),
    borderRadius: 40,
    margin: const EdgeInsets.all(20),
    duration: const Duration(seconds: 3),
    barBlur: 10,
    snackPosition: SnackPosition.TOP,
  );
}

/// A custom snackbar widget for success
GetSnackBar successSnack(e) {
  final C = Colorz(Get.context!);
  final T = Textz(Get.context!);
  return GetSnackBar(
    titleText: Text(
      'success'.tr,
      style: T.h4,
      textAlign: TextAlign.center,
    ),
    messageText: Text('$e ', style: T.h5),
    borderColor: C.g,
    backgroundColor: C.g!.withOpacity(0.5),
    borderRadius: 40,
    margin: const EdgeInsets.all(20),
    duration: const Duration(seconds: 3),
    barBlur: 10,
    snackPosition: SnackPosition.TOP,
  );
}

/// A custom snackbar widget for features that haven't been implemented yet
GetSnackBar soonSnack() {
  final C = Colorz(Get.context!);
  final T = Textz(Get.context!);
  return GetSnackBar(
    titleText: Text(
      'coming_soon'.tr,
      style: T.h4,
      textAlign: TextAlign.center,
    ),
    messageText: Text('', style: T.h5),
    backgroundColor: C.ts!,
    borderColor: C.t,
    borderRadius: 40,
    margin: const EdgeInsets.all(20),
    duration: const Duration(seconds: 3),
    barBlur: 10,
    snackPosition: SnackPosition.TOP,
  );
}
