part of omniversify_core;

/// The unified navigation system
class OmniversalNavigation extends NavigationBar {
  final List<Widget> destinationz;
  final OmniversalHomeController controller;
  final Function button1;
  final Function button2;
  final Function button3;
  final Function button4;
  final Function(int) navBehavior;

  // ignore: prefer_const_constructors_in_immutables
  OmniversalNavigation(this.destinationz, this.controller, this.button1,
      this.button2, this.button3, this.button4, this.navBehavior,
      {Key? key})
      : super(
          key: key,
          destinations: destinationz,
        );
  @override
  Widget build(BuildContext context) {
    return NavigationBar(
        destinations: destinationz,
        backgroundColor: Theme.of(context).colorScheme.secondary,
        animationDuration: const Duration(seconds: 1),
        selectedIndex: controller.pageselected.value,
        onDestinationSelected: navBehavior);
  }
}
