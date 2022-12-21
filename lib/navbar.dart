part of omniversify_core;

/// Navigation bar in case the app is in mobile mode
class NavBar extends GetResponsiveView<OmniversalHomeController> {
  NavBar({
    super.key,
    this.icon1,
    this.icon2,
    this.icon3,
    this.label1,
    this.label2,
    this.label3,
    this.route1,
    this.route2,
    this.route3,
  });
  final IconData? icon1;
  final String? label1;
  final String? route1;
  final IconData? icon2;
  final String? label2;
  final String? route2;
  final IconData? icon3;
  final String? label3;
  final String? route3;
  @override
  Widget build(BuildContext context) {
    screen.context = context;
    if (screen.isPhone || screen.isWatch) {
      return NavigationBar(
          onDestinationSelected: (pageindex) {
            controller.pageselected.value = pageindex;

            switch (pageindex) {
              case 0:
                Get.toNamed('/');
                controller.update();
                break;
              case 1:
                Get.toNamed('/Settings');
                controller.update();
                break;
              case 2:
                if (icon1 != null && label1 != null) {
                  Get.toNamed(route1!);
                  controller.update();
                }
                break;
              case 3:
                if (icon2 != null && label2 != null) {
                  Get.toNamed(route2!);
                  controller.update();
                }
                break;
              case 4:
                if (icon3 != null && label3 != null) {
                  Get.toNamed(route3!);
                  controller.update();
                }
                break;
            }
          },
          selectedIndex: controller.pageselected.value,
          destinations: [
            NavigationDestination(
              icon: const Icon(
                Icons.home,
              ),
              selectedIcon: const Icon(
                Icons.home,
              ),
              label: 'home'.tr,
            ),
            NavigationDestination(
                icon: const Icon(
                  Icons.settings,
                ),
                selectedIcon: const Icon(
                  Icons.settings,
                ),
                label: 'settings'.tr),
            if (icon1 != null && label1 != null)
              NavigationDestination(
                  icon: Icon(
                    icon1,
                  ),
                  selectedIcon: Icon(
                    icon1,
                  ),
                  label: label1!),
            if (icon2 != null && label2 != null)
              NavigationDestination(
                icon: Icon(
                  icon2,
                ),
                selectedIcon: Icon(
                  icon2,
                ),
                label: label2!,
              ),
            if (icon3 != null && label3 != null)
              NavigationDestination(
                icon: Icon(
                  icon3,
                ),
                selectedIcon: Icon(
                  icon3,
                ),
                label: label3!,
              ),
          ]);
    } else {
      return const SizedBox();
    }
  }
}
