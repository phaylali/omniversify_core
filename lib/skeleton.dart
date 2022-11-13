part of omniversify_core;

/// The wrapper around every page in the omniversify_core package, by filling its pre-requisits you ensure to have a page that follow the design pattern with little to no errors
class OmniversalSkeleton extends GetView<OmniversalHomeController> {
  const OmniversalSkeleton(
      {super.key,
      required this.button,
      required this.child,
      required this.fab,
      required this.function,
      required this.title,
      required this.navrail,
      required this.navbar,
      required this.navrailx,
      required this.fabenabled,
      required this.fullscreen});
  final String title;
  final Widget child;
  final String? fab;
  final Function? function;
  final Widget? button;
  final NavRail? navrail;
  final NavBar? navbar;
  final Widget? navrailx;
  final bool fabenabled;
  final bool fullscreen;

  @override
  Widget build(BuildContext context) {
    Get.put(OmniversalHomeController());

    SystemChrome.setApplicationSwitcherDescription(
        ApplicationSwitcherDescription(
      label: '$title | ${'title'.tr}',
      primaryColor: Theme.of(context).colorScheme.primary.value,
    ));

    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        floatingActionButton: fabenabled
            ? FloatingActionButton(
                tooltip: fab, child: button, onPressed: () => function!())
            : null,
        body: SafeArea(
          child: Row(
            children: [
              navrail ?? Container(),
              if (!fullscreen)
                const SizedBox(
                  width: 20,
                ),
              Expanded(
                  child: Align(
                alignment: Alignment.topCenter,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      if (!fullscreen)
                        const SizedBox(
                          height: 20,
                        ),
                      if (!fullscreen)
                        Text(title,
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.displaySmall),
                      child,
                      if (!fullscreen)
                        const SizedBox(
                          height: 160,
                        ),
                    ],
                  ),
                ),
              )),
              navrailx ?? Container(),
              if (!fullscreen)
                const SizedBox(
                  width: 20,
                ),
            ],
          ),
        ),
        bottomNavigationBar: navbar);
  }
}
