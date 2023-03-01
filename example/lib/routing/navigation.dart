import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

List<Widget> drawerDest(context) {
  final T = AppLocalizations.of(context);
  return [
    const DrawerHeader(child: CircleAvatar()),
    NavigationDrawerDestination(
      icon: const Icon(
        UniconsSolid.house_user,
      ),
      selectedIcon: const Icon(
        UniconsLine.house_user,
      ),
      label: Text(T!.home),
    ),
    NavigationDrawerDestination(
        icon: const Icon(
          UniconsSolid.airplay,
        ),
        selectedIcon: const Icon(
          UniconsLine.airplay,
        ),
        label: Text(T.discovery)),
    NavigationDrawerDestination(
      icon: const Icon(
        UniconsSolid.user_md,
      ),
      selectedIcon: const Icon(
        UniconsLine.user,
      ),
      label: Text(T.profile),
    ),
    NavigationDrawerDestination(
        icon: const Icon(
          UniconsSolid.graph_bar,
        ),
        selectedIcon: const Icon(
          UniconsLine.graph_bar,
        ),
        label: Text(T.settings)),
    NavigationDrawerDestination(
        icon: const Icon(
          UniconsLine.globe,
        ),
        selectedIcon: const Icon(
          UniconsLine.globe,
        ),
        label: Text(T.localeName)),
    const NavigationDrawerDestination(
        icon: Icon(
          UniconsLine.brightness,
        ),
        selectedIcon: Icon(
          UniconsLine.bright,
        ),
        label: Text('theme')),
  ];
}
