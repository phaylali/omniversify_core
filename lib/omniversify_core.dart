library omniversify_core;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_strategy/url_strategy.dart';
part 'routing.dart';
part 'translation.dart';
part 'app.dart';
part 'binding.dart';
part 'themes.dart';
part 'error404.dart';
part 'skeleton.dart';
part 'navbar_x.dart';
part 'homecontroller.dart';
part 'const.dart';
part 'bar.dart';
part 'settings.dart';
part 'navbar.dart';
part 'navrail.dart';
part 'dialogs.dart';
part 'snackbars.dart';

/// This is the main app and the first thing you call to ensure theme and language persistence
omniverseMain() async {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(OmniversalHomeController());
  setPathUrlStrategy();
  await initializeDateFormatting();
  await GetStorage.init();
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.black));
}
