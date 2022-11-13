part of omniversify_core;

/// The Main widget that is used at the start of the any app
class OmniversalMain extends StatelessWidget {
  OmniversalMain(
      {Key? key,
      required this.title,
      required this.titleAR,
      required this.welcome,
      required this.welcomeAR,
      required this.homepage,
      required this.routes})
      : super(key: key);
  final String title;
  final String titleAR;
  final String welcome;
  final String welcomeAR;
  final Widget homepage;
  final List<GetPage<dynamic>> routes;
  final storage = GetStorage();
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        initialRoute: '/',
        getPages: routes,
        unknownRoute: routes[2],
        theme: gamerTheme(),
        darkTheme: gamerTheme(),
        translations:
            OmniversalTranslations(title, titleAR, welcome, welcomeAR),
        fallbackLocale: const Locale('en', 'US'),
        locale: storage.read('langCode') != null
            ? Locale(storage.read('langCode'), storage.read('countryCode'))
            : const Locale('en', 'US'),
        navigatorKey: Get.key,
        title: 'title'.tr,
        debugShowCheckedModeBanner: false,
        home: homepage);
  }
}
