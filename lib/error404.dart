part of omniversify_core;

// ignore: use_key_in_widget_constructors
class OmniversalError404 extends GetResponsiveView<OmniversalHomeController> {
  @override
  Widget build(BuildContext context) {
    return OmniversalSkeleton(
      fullscreen: false,
      navrailx: null,
      function: () {
        Get.toNamed("/");
      },
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
      fab: 'home'.tr,
      title: 'error404'.tr,
      button: Icon(
        Icons.home,
        color: Theme.of(context).colorScheme.primary,
      ),
      fabenabled: true,
      child: Center(
        child: SizedBox(
            width: 400,
            height: 400,
            child: OutlinedButton(
              onPressed: null,
              child: ListTile(
                title: Text(
                  'go_back_home'.tr,
                  style: Theme.of(context).textTheme.headline4,
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.rtl,
                ),
              ),
            )),
      ),
    );
  }
}
