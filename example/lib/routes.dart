import 'package:example/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:omniversify_core/omniversify_core.dart';

import 'homecontroller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<HomeController>(
      HomeController(),
    );
  }
}

abstract class Routes {
  static const unknown = Paths.unknown;
  static const settings = Paths.settings;
  static const login = Paths.login;
  static const initial = Paths.initial;
}

abstract class Paths {
  static const initial = '/';
  static const settings = '/Settings';
  static const login = '/Login';
  static const unknown = '/Error404';
}

class AppPages {
  static const unknown = Routes.unknown;
  static const initial = Routes.initial;
  static const settings = Routes.settings;
  static final routes = [
    GetPage(
      name: Paths.initial,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Paths.settings,
      page: () => OmniversalSettings(
          terms: 'https://albourane.com',
          privacy: 'https://albourane.com',
          license: () {
            showLicensePage(
              context: Get.context!,
              applicationName: 'TestSUbject',
              applicationVersion: '69.4.20',
            );
          }),
    ),
    GetPage(
      name: Paths.unknown,
      page: () => OmniversalError404(),
    ),
  ];
}
