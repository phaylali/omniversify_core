part of omniversify_core;

/// A standalone page that is an error page. add it to your routing system are shown in the example to handle your rounting errors
class OmniversalError404 extends GetResponsiveView<OmniversalHomeController> {
  OmniversalError404({super.key});

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
          : NavRail(
              icon1: null,
              icon2: null,
              icon3: null,
              label1: null,
              label2: null,
              label3: null,
              route1: null,
              route2: null,
              route3: null,
              desk: screen.isDesktop ? true : false,
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
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.rtl,
                ),
              ),
            )),
      ),
    );
  }
}
