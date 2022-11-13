import 'package:example/homecontroller.dart';

import 'home.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:omniversify_core/omniversify_core.dart';
import 'routes.dart';
import 'package:get_storage/get_storage.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();

  initializeDateFormatting('en_UK');
  Get.put<OmniversalHomeController>(OmniversalHomeController());
  Get.put<HomeController>(HomeController());
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.black));
  await omniverseMain();
  runApp(const Start());
}

class Start extends GetView<OmniversalHomeController> {
  const Start({super.key});

  @override
  Widget build(BuildContext context) {
    return OmniversalMain(
      title: 'Test App',
      titleAR: 'تجربة',
      welcome: 'Welcome',
      welcomeAR: 'مرحبا',
      routes: AppPages.routes,
      homepage: HomePage(),
    );
  }
}
