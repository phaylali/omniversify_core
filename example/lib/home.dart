import 'homecontroller.dart';
import 'routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:omniversify_core/omniversify_core.dart';
import 'package:unicons/unicons.dart';

class HomePage extends GetResponsiveView<HomeController> {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    screen.context = context;
    final C = Colorz(context);
    final T = Textz(context);

    return OmniversalSkeleton(
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
        button: Icon(
          UniconsLine.refresh,
          color: C.p,
        ),
        fab: 'reload'.tr,
        function: () {},
        title: 'title'.tr,
        fabenabled: true,
        fullscreen: false,
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
                    height: 100,
                    width: 500,
                    child: OutlinedButton(
                        child: ListTile(
                          enabled: true,
                          title: Text(
                            'settings'.tr,
                            style: T.h5,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        onPressed: () async {
                          Get.toNamed(Routes.settings);

                          controller.update();
                        })),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ));
  }
}
