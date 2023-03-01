part of omniversify_core;

/// A standalone page that is an error page. add it to your routing system are shown in the example to handle your rounting errors
class OmniversalError404 extends GetResponsiveView<OmniversalHomeController> {
  OmniversalError404({super.key});

  @override
  Widget build(BuildContext context) {
    return OmniversalSkeleton(
      function: () {
        Get.toNamed("/");
      },
      navrail: NavRail(),
      navbar: NavBar(),
      fab: 'home'.tr,
      title: 'error404'.tr,
      button: Icon(
        Icons.home,
        color: Theme.of(context).colorScheme.primary,
      ),
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
