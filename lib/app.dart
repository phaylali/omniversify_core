part of omniversify_core;

/// The Main widget that is used at the start of the any app
class OmniversalMain extends StatelessWidget {
  const OmniversalMain({
    Key? key,
    required this.title,
    required this.titleAR,
    required this.welcome,
    required this.welcomeAR,
    required this.homepage,
    //required this.routes
  }) : super(key: key);
  final String title;
  final String titleAR;
  final String welcome;
  final String welcomeAR;
  final Widget homepage;
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      scrollBehavior: const MaterialScrollBehavior(),
      theme: flexLight(),
      darkTheme: flexDark(),
      title: 'title',
      routeInformationParser: OmniRouter().router.routeInformationParser,
      routerDelegate: OmniRouter().router.routerDelegate,
      debugShowCheckedModeBanner: false,
    );
  }
}
