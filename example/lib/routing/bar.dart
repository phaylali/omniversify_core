import 'package:flutter/material.dart';
//import 'package:flutter_gen/gen_l10n/app_localizations.dart';

List<Widget> barDest(context) {
  //final T = AppLocalizations.of(context);
  return [
    const NavigationDestination(
      icon: Icon(
        Icons.home,
      ),
      selectedIcon: Icon(
        Icons.home,
      ),
      label: 'Page1',
    ),
    const NavigationDestination(
        icon: Icon(
          Icons.hail,
        ),
        selectedIcon: Icon(
          Icons.h_mobiledata,
        ),
        label: 'Page2'),
    const NavigationDestination(
      icon: Icon(
        Icons.gps_fixed,
      ),
      selectedIcon: Icon(
        Icons.face,
      ),
      label: 'Page3',
    ),
    const NavigationDestination(
        icon: Icon(
          Icons.safety_check,
        ),
        selectedIcon: Icon(
          Icons.vaccines,
        ),
        label: 'Page4'),
  ];
}
