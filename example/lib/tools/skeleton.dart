import 'package:app/controllers/pages.dart';
import 'package:app/controllers/search.dart';
import 'package:app/controllers/nav.dart';
import 'package:app/routing/bar.dart';
import 'package:app/routing/navigation.dart';
import 'package:app/tools/appbar.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
//import 'package:flutter_gen/gen_l10n/app_localizations.dart';

final GlobalKey<ScaffoldState> scaffoldkey = GlobalKey<ScaffoldState>();

class Skeleton extends ConsumerWidget {
  final Widget child;
  const Skeleton({super.key, required this.child});

  @override
  Widget build(BuildContext context, ref) {
    final int navPosition = ref.watch(navProvider);
    final int pagePosition = ref.watch(pagesProvider);
    final search = ref.watch(searchProvider);
    //final T = AppLocalizations.of(context);

    return Scaffold(
        key: scaffoldkey,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        endDrawerEnableOpenDragGesture: true,
        drawerDragStartBehavior: DragStartBehavior.start,
        endDrawer: NavigationDrawer(
            selectedIndex: navPosition,
            onDestinationSelected: (value) {
              onNav(value, ref, context);
            },
            children: drawerDest(context)),
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: FloatingActionButton(
              tooltip: 'fab', child: const Icon(Icons.abc), onPressed: () {}),
        ),
        bottomNavigationBar: NavigationBar(
          selectedIndex: pagePosition,
          onDestinationSelected: (value) {
            onPages(value, ref, context);
          },
          destinations: barDest(context),
        ),
        appBar: omniAppBar(search, ref, context),
        body: SafeArea(child: child));
  }
}
