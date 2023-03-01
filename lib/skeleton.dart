// ignore_for_file: must_be_immutable

part of omniversify_core;

/// The wrapper around every page in the omniversify_core package, by filling its pre-requisits you ensure to have a page that follow the design pattern with little to no errors

class OmniversalSkeleton extends GetResponsiveView<OmniversalHomeController> {
  OmniversalSkeleton({
    super.key,
    required this.button,
    required this.child,
    required this.fab,
    required this.function,
    required this.title,
    required this.navrail,
    required this.navbar,
  });
  final String title;
  final Widget child;
  final String? fab;
  final Function? function;
  final Widget? button;
  final NavRail? navrail;
  final NavBar? navbar;
  bool isLargeScreen = false;
  @override
  Widget build(BuildContext context) {
    Get.put(OmniversalHomeController());

    SystemChrome.setApplicationSwitcherDescription(
        ApplicationSwitcherDescription(
      label: '$title | ${'title'.tr}',
      primaryColor: Theme.of(context).colorScheme.primary.value,
    ));
    screen.context = context;

    return Scaffold(
        floatingActionButtonLocation: screen.isPhone || screen.isWatch
            ? FloatingActionButtonLocation.centerDocked
            : FloatingActionButtonLocation.endFloat,
        floatingActionButton: FloatingActionButton(
            tooltip: fab, child: button, onPressed: () => function!()),

        //drawer: const Drawer(),
        body: SafeArea(
          child: Row(
            children: [
              //navrail!,
              const SizedBox(
                width: 20,
              ),
              Expanded(
                  child: Align(
                alignment: Alignment.topCenter,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Text(title,
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.displaySmall),
                      child,
                      const SizedBox(
                        height: 160,
                      ),
                    ],
                  ),
                ),
              )),
              const SizedBox(
                width: 20,
              ),
            ],
          ),
        ),
        bottomNavigationBar: navbar!);
  }
}
/*
class OmniversalSkeleton extends GetResponsiveView<OmniversalHomeController> {
  OmniversalSkeleton(
      {super.key,
      required this.button,
      required this.child,
      required this.fab,
      required this.function,
      required this.title,
      required this.navrail,
      required this.navbar,
      required this.fabenabled,
      required this.fullscreen});
  final String title;
  final Widget child;
  final String? fab;
  final Function? function;
  final Widget? button;
  final NavRail? navrail;
  final NavBar? navbar;

  final bool fabenabled;
  final bool fullscreen;

  @override
  Widget build(BuildContext context) {
    Get.put(OmniversalHomeController());

    SystemChrome.setApplicationSwitcherDescription(
        ApplicationSwitcherDescription(
      label: '$title | ${'title'.tr}',
      primaryColor: Theme.of(context).colorScheme.primary.value,
    ));
    //screen.context = context;

    List<NavigationDestination> destinations = <NavigationDestination>[
      const NavigationDestination(
          label: 'Inbox',
          icon: Icon(
            Icons.inbox,
          )),
      const NavigationDestination(
          label: 'Articles',
          icon: Icon(
            Icons.article_outlined,
          )),
      const NavigationDestination(
          label: 'Chat',
          icon: Icon(
            Icons.chat_bubble_outline,
          )),
      const NavigationDestination(
          label: 'Video',
          icon: Icon(
            Icons.video_call_outlined,
          ))
    ];
    List<NavigationRailDestination> raildestinations =
        <NavigationRailDestination>[
      const NavigationRailDestination(
          label: Text('Inbox'),
          icon: Icon(
            Icons.inbox,
          )),
      const NavigationRailDestination(
          label: Text('Articles'),
          icon: Icon(
            Icons.article_outlined,
          )),
      const NavigationRailDestination(
          label: Text('Chat'),
          icon: Icon(
            Icons.chat_bubble_outline,
          )),
      const NavigationRailDestination(
          label: Text('Video'),
          icon: Icon(
            Icons.video_call_outlined,
          ))
    ];

    final Widget trailingNavRail = Column(
      children: <Widget>[
        const Divider(color: Colors.white, thickness: 1.5),
        const SizedBox(height: 10),
        Row(children: const <Widget>[
          SizedBox(width: 22),
          Text(
            'Actions',
          )
        ]),
        const SizedBox(height: 16),
        OutlinedButton(
          onPressed: () {},
          child: const ListTile(
            leading: Icon(
              Icons.folder_copy_outlined,
            ),
            title: Text(
              'Pussy',
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        const SizedBox(height: 16),
        OutlinedButton(
          onPressed: () {},
          child: const ListTile(
            leading: Icon(
              Icons.folder_copy_outlined,
            ),
            title: Text(
              'Dick',
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        const SizedBox(height: 16),
        OutlinedButton(
          onPressed: () {},
          child: const ListTile(
            leading: Icon(
              Icons.folder_copy_outlined,
            ),
            title: Text(
              'Boobs',
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        const SizedBox(height: 16),
        OutlinedButton(
          onPressed: () {},
          child: const ListTile(
            leading: Icon(
              Icons.folder_copy_outlined,
            ),
            title: Text(
              'Balls',
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        const SizedBox(height: 16),
        OutlinedButton(
          onPressed: () {},
          child: const ListTile(
            leading: Icon(
              Icons.folder_copy_outlined,
            ),
            title: Text(
              'Ass',
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
    // AdaptiveLayout has a number of slots that take SlotLayouts and these
    // SlotLayouts' configs take maps of Breakpoints to SlotLayoutConfigs.
    return AdaptiveLayout(
      // Primary navigation config has nothing from 0 to 600 dp screen width,
      // then an unextended NavigationRail with no labels and just icons then an
      // extended NavigationRail with both icons and labels.
      primaryNavigation: SlotLayout(
        config: <Breakpoint, SlotLayoutConfig>{
          Breakpoints.medium: SlotLayout.from(
            inAnimation: AdaptiveScaffold.leftOutIn,
            key: const Key('Primary Navigation Medium'),
            builder: (_) => Row(
              children: [
                Center(
                  child: NavigationRail(
                    leading: const Icon(Icons.menu),
                    destinations: raildestinations,
                    extended: false,
                    /*.map((_) => AdaptiveScaffold.toRailDestination(_))
                        .toList(),*/
                    selectedIndex: 0,
                  ),
                ),
                const Spacer()
              ],
            ),
          ),
          Breakpoints.large: SlotLayout.from(
            key: const Key('Primary Navigation Large'),
            inAnimation: AdaptiveScaffold.leftOutIn,
            builder: (_) => AdaptiveScaffold.standardNavigationRail(
                //extended: true,
                labelType: NavigationRailLabelType.all,
                /*leading: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const <Widget>[
                  Text(
                    'REPLY',
                    style: TextStyle(color: Color.fromARGB(255, 255, 201, 197)),
                  ),
                  Icon(Icons.menu_open)
                ],
              ),*/

                destinations: raildestinations
                /*.map((_) => AdaptiveScaffold.toRailDestination(_))
                  .toList(),*/
                //trailing: trailingNavRail,
                ),
          ),
        },
      ),
      // Body switches between a ListView and a GridView from small to medium
      // breakpoints and onwards.
      body: SlotLayout(
        config: <Breakpoint, SlotLayoutConfig>{
          Breakpoints.small: SlotLayout.from(
              key: const Key('Body Small'),
              builder: (_) => Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: child,
                  )),
          Breakpoints.mediumAndUp: SlotLayout.from(
            key: const Key('Body Medium'),
            builder: (_) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: child,
            ),
          )
        },
      ),
      // BottomNavigation is only active in small views defined as under 600 dp
      // width.
      bottomNavigation: SlotLayout(
        config: <Breakpoint, SlotLayoutConfig>{
          Breakpoints.small: SlotLayout.from(
            key: const Key('Bottom Navigation Small'),
            inAnimation: AdaptiveScaffold.bottomToTop,
            outAnimation: AdaptiveScaffold.topToBottom,
            builder: (_) => AdaptiveScaffold.standardBottomNavigationBar(
                destinations: destinations),
          )
        },
      ),
    );
  }
}
*/