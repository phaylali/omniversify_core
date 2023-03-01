import 'package:app/pages/page1.dart';
import 'package:app/pages/page2.dart';
import 'package:app/pages/page3.dart';
import 'package:app/pages/page4.dart';
import 'package:app/screens/discover.dart';
import 'package:app/screens/home.dart';
import 'package:app/screens/profile.dart';
import 'package:app/screens/settings.dart';
import 'package:app/tools/skeleton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> shellkey = GlobalKey(debugLabel: 'shell');
final GlobalKey<NavigatorState> rootkey = GlobalKey(debugLabel: 'root');

class OmniRouter {
  GoRouter router = GoRouter(
    navigatorKey: rootkey,
    routes: [
      ShellRoute(
          navigatorKey: shellkey,
          builder: (context, state, child) {
            return Skeleton(key: state.pageKey, child: child);
          },
          routes: [
            GoRoute(
              name: 'home',
              path: '/',
              builder: (context, state) {
                return Home(key: state.pageKey);
              },
            ),
            GoRoute(
              name: 'discover',
              path: '/discover',
              builder: (context, state) {
                return Discover(key: state.pageKey);
              },
            ),
            GoRoute(
              name: 'profile',
              path: '/profile',
              builder: (context, state) {
                return Profile(
                  key: state.pageKey,
                );
              },
            ),
            GoRoute(
              name: 'settings',
              path: '/settings',
              builder: (context, state) {
                return Settings(key: state.pageKey);
              },
            ),
            ...pages
          ]),
    ],
  );
}

final goRouterProvider = Provider<GoRouter>((ref) {
  return OmniRouter().router;
});
List<GoRoute> pages = [
  GoRoute(
    name: 'page1',
    path: '/page1',
    builder: (context, state) {
      return Page1(key: state.pageKey);
    },
  ),
  GoRoute(
    name: 'page2',
    path: '/page2',
    builder: (context, state) {
      return Page2(key: state.pageKey);
    },
  ),
  GoRoute(
    name: 'page3',
    path: '/page3',
    builder: (context, state) {
      return Page3(key: state.pageKey);
    },
  ),
  GoRoute(
    name: 'page4',
    path: '/page4',
    builder: (context, state) {
      return Page4(key: state.pageKey);
    },
  ),
];
