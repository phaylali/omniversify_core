import 'package:app/controllers/language.dart';
import 'package:app/controllers/theme.dart';
import 'package:app/l10n/language.dart';
import 'package:app/routing/routes.dart';
import 'package:app/tools/themes.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.black));
  runApp(const ProviderScope(child: Start()));
}

class Start extends ConsumerWidget {
  const Start({super.key});
  @override
  Widget build(BuildContext context, ref) {
    final routerz = ref.watch(goRouterProvider);
    final darkMode = ref.watch(darkModeProvider);
    final lang = ref.watch(langProvider);
    return MaterialApp.router(
      scrollBehavior: const MaterialScrollBehavior(),
      theme: flexLight(),
      darkTheme: flexDark(),
      locale: lang.locale,
      supportedLocales: Language.locales().toList(),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      themeMode: darkMode ? ThemeMode.dark : ThemeMode.light,
      title: "Title",
      routeInformationParser: routerz.routeInformationParser,
      routeInformationProvider: routerz.routeInformationProvider,
      routerDelegate: routerz.routerDelegate,
      debugShowCheckedModeBanner: false,
    );
  }
}
