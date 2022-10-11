part of omniversify_core;

class OmniversalSkeleton extends GetView<OmniversalHomeController> {
  // ignore: use_key_in_widget_constructors
  const OmniversalSkeleton(
      {required this.button,
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
                backgroundColor: Theme.of(context).colorScheme.secondary,
                tooltip: fab,
                child: button,
                onPressed: () => function!())
            : null,
        body: SafeArea(
          child: Row(
            children: [
              navrail != null
                  ? SizedBox(
                      width: 80,
                      child: navrail,
                    )
                  : Container(),
              if (!fullscreen)
                const SizedBox(
                  width: 20,
                ),
              Expanded(
                  child: Align(
                alignment: Alignment.topCenter,
                child: SingleChildScrollView(
                  //physics:  const BouncingScrollPhysics(),
                  child: Column(
                    //shrinkWrap: false,
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
              navrailx != null
                  ? SizedBox(
                      width: 80,
                      child: navrailx,
                    )
                  : Container(),
              if (!fullscreen)
                const SizedBox(
                  width: 20,
                ),
            ],
          ),
        ),
        bottomNavigationBar: navbar != null
            ? SizedBox(
                height: 80,
                child: navbar,
              )
            : null);
  }
}
