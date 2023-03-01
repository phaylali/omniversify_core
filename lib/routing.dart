part of omniversify_core;

// For future implementation
final GlobalKey<NavigatorState> shellkey = GlobalKey(debugLabel: 'shell');
final GlobalKey<NavigatorState> rootkey = GlobalKey(debugLabel: 'root');

class OmniRouter {
  GoRouter router = GoRouter(
    initialLocation: '/home',
    routes: [
      GoRoute(
        name: 'root',
        path: '/home',
        pageBuilder: (context, state) {
          return MaterialPage(child: const Home(), key: state.pageKey);
        },
      ),
      ShellRoute(
          navigatorKey: shellkey,
          builder: (context, state, child) {
            return OmniversalSkeleton(
                key: state.pageKey,
                button: null,
                fab: '',
                function: null,
                navbar: null,
                navrail: null,
                title: '',
                child: child);
          },
          routes: [
            GoRoute(
              name: 'home',
              path: '/',
              pageBuilder: (context, state) {
                return const MaterialPage(child: Home());
              },
            ),
            GoRoute(
              name: 'discover',
              path: '/discover',
              builder: (context, state) {
                return const Home();
              },
            ),
            GoRoute(
              name: 'profile',
              path: '/profile',
              pageBuilder: (context, state) {
                return const MaterialPage(child: Home());
              },
            ),
            GoRoute(
              name: 'settings',
              path: '/settings',
              pageBuilder: (context, state) {
                return const MaterialPage(child: Home());
              },
            ),
          ]),
    ],
  );
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Center(
            child: SizedBox(
      height: 100,
      width: 100,
      child: Container(
        color: Colors.red,
        child: const SizedBox(
          height: 100,
          width: 100,
          child: Text('Home'),
        ),
      ),
    )));
  }
}

class Discover extends StatelessWidget {
  const Discover({super.key});

  @override
  Widget build(BuildContext context) {
    return const Material(child: Center(child: Text('Discover')));
  }
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Material(child: Center(child: Text('Profile')));
  }
}

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return const Material(child: Center(child: Text('Settings')));
  }
}

final goRouterProvider = Provider<GoRouter>((ref) {
  return OmniRouter().router;
});
