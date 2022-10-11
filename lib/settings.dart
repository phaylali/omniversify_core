part of omniversify_core;

class OmniversalSettings extends GetResponsiveView<OmniversalHomeController> {
  // ignore: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  OmniversalSettings({
    required this.terms,
    required this.license,
    required this.privacy,
  });

  final String terms;
  final String privacy;

  final Function license;

  @override
  Widget build(BuildContext context) {
    screen.context = context;
    return OmniversalSkeleton(
      fullscreen: false,
      navrailx: null,
      navrail: screen.isPhone
          ? null
          : const NavRail(
              icon1: null,
              icon2: null,
              icon3: null,
              label1: null,
              label2: null,
              label3: null,
              route1: null,
              route2: null,
              route3: null,
            ),
      navbar: screen.isPhone
          ? const NavBar(
              icon1: null,
              icon2: null,
              icon3: null,
              label1: null,
              label2: null,
              label3: null,
              route1: null,
              route2: null,
              route3: null,
            )
          : null,
      function: () {
        Get.showSnackbar(soonSnack());
      },
      fab: 'theme'.tr,
      title: 'settings'.tr,
      button: Icon(
        Icons.mode_night,
        color: Theme.of(context).colorScheme.primary,
      ),
      fabenabled: true,
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Wrap(
            alignment: WrapAlignment.spaceEvenly,
            crossAxisAlignment: WrapCrossAlignment.center,
            runAlignment: WrapAlignment.spaceEvenly,
            spacing: 20,
            runSpacing: 20,
            children: [
              SizedBox(
                  width: 500,
                  height: 100,
                  child: OutlinedButton(
                    child: ListTile(
                      title: Text(
                        'terms'.tr,
                        style: Theme.of(context).textTheme.headline6,
                        textDirection: TextDirection.rtl,
                      ),
                      leading: Icon(
                        Icons.document_scanner,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    onPressed: () {
                      launchUrl(Uri.parse(terms));
                    },
                  )),
              SizedBox(
                  width: 500,
                  height: 100,
                  child: OutlinedButton(
                    child: ListTile(
                      title: Text(
                        'privacy'.tr,
                        style: Theme.of(context).textTheme.headline6,
                        textDirection: TextDirection.rtl,
                      ),
                      leading: Icon(
                        Icons.document_scanner,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    onPressed: () {
                      launchUrl(Uri.parse(privacy));
                    },
                  )),
              SizedBox(
                  height: 100,
                  width: 500,
                  child: OutlinedButton(
                    child: ListTile(
                      title: Text(
                        'licenses'.tr,
                        style: Theme.of(context).textTheme.headline6,
                        textDirection: TextDirection.rtl,
                      ),
                      leading: Icon(
                        Icons.document_scanner,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    onPressed: () {
                      license();
                    },
                  )),
              SizedBox(
                  height: 100,
                  width: 500,
                  child: OutlinedButton(
                    child: ListTile(
                      title: Text(
                        'next_language'.tr,
                        style: Theme.of(context).textTheme.headline6,
                        textDirection: TextDirection.rtl,
                      ),
                      leading: Icon(
                        Icons.language,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    onPressed: () {
                      controller.switchLang();
                    },
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
