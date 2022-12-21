part of omniversify_core;

/// The unified settings page, use it in routing, contains a language switch (will be replaced by a list of language except french), licenses page, privacy page, and terms & conditions page, tat you can add in the rounting page
class OmniversalSettings extends GetResponsiveView<OmniversalHomeController> {
  OmniversalSettings({
    super.key,
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
      //navrailx: null,
      navrail: NavRail(),
      navbar: NavBar(),
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
                        style: Theme.of(context).textTheme.titleLarge,
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
                        style: Theme.of(context).textTheme.titleLarge,
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
                        style: Theme.of(context).textTheme.titleLarge,
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
                        style: Theme.of(context).textTheme.titleLarge,
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
