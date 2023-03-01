import 'package:app/l10n/language.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LangController extends StateNotifier<Language> {
  late SharedPreferences prefs;
  Future _init() async {
    prefs = await SharedPreferences.getInstance();
    var storedLocale = prefs.getInt("locale");
    state = Language.languages()
        .firstWhere((element) => element.id == storedLocale);
    if (kDebugMode) {
      print(storedLocale);
    }
  }

  LangController() : super(Language.languages()[1]) {
    _init();
  }
  void setLocale(Language val) {
    state = val;
    prefs.setInt("locale", val.id);
    if (kDebugMode) {
      print(prefs.getInt("locale"));
    }
  }
}

final langProvider = StateNotifierProvider<LangController, Language>((ref) {
  return LangController();
});
