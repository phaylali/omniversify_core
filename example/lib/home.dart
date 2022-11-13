import 'homecontroller.dart';
//import 'routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:omniversify_core/omniversify_core.dart';
import 'package:unicons/unicons.dart';

enum Test { one, two }

class HomePage extends GetResponsiveView<HomeController> {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    screen.context = context;
    final C = Colorz(context);
    final T = Textz(context);

    return OmniversalSkeleton(
        navrailx: null,
        navrail: screen.isPhone || screen.isWatch
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
        navbar: screen.isPhone || screen.isWatch
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
            GetBuilder<HomeController>(
                init: controller,
                initState: (state) {},
                builder: (context) {
                  return Wrap(
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
                                  'coming_soon'.tr,
                                  style: T.h5,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              onPressed: () async {
                                Get.showSnackbar(soonSnack());

                                controller.update();
                              })),
                      SizedBox(
                          height: 100,
                          width: 500,
                          child: OutlinedButton(
                              child: ListTile(
                                enabled: true,
                                title: Text(
                                  'success'.tr,
                                  style: T.h5,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              onPressed: () async {
                                Get.showSnackbar(successSnack(
                                    'Congratulations, you played yourself'));

                                controller.update();
                              })),
                      SizedBox(
                          height: 100,
                          width: 500,
                          child: OutlinedButton(
                              child: ListTile(
                                enabled: true,
                                title: Text(
                                  'error'.tr,
                                  style: T.h5,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              onPressed: () async {
                                Get.showSnackbar(errorSnack('you fool'));

                                controller.update();
                              })),
                      /*SizedBox(
                        height: 100,
                        width: 500,
                        child: ListTile(
                            enabled: true,
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Radio<Test?>(
                                  groupValue: controller.testo,
                                  onChanged: (value) {
                                    controller.testo = value!;
                                    controller.update();
                                  },
                                  value: Test.one,
                                ),
                                Radio<Test?>(
                                  groupValue: controller.testo,
                                  onChanged: (value) {
                                    controller.testo = value!;
                                    controller.update();
                                  },
                                  value: Test.two,
                                )
                              ],
                            )),
                      ),*/
                    ],
                  );
                }),
            const SizedBox(
              height: 20,
            ),
          ],
        ));
  }
}
