part of omniversify_core;

class NavBarX extends GetView<OmniversalHomeController> {
  const NavBarX({
    Key? key,
    this.icon1,
    this.icon2,
    this.icon3,
    this.icon4,
    this.icon5,
    this.label1,
    this.label2,
    this.label3,
    this.label4,
    this.label5,
    this.fun,
    this.fun2,
    this.fun3,
    this.fun4,
    this.fun5,
    required this.horizontal,
  }) : super(key: key);
  final IconData? icon1;
  final String? label1;
  final Function? fun;
  final IconData? icon2;
  final String? label2;
  final Function? fun2;
  final IconData? icon3;
  final String? label3;
  final Function? fun3;
  final IconData? icon4;
  final String? label4;
  final Function? fun4;
  final IconData? icon5;
  final String? label5;
  final Function? fun5;

  final bool horizontal;
  @override
  Widget build(BuildContext context) {
    List<Widget> children = [
      if (!horizontal)
        const SizedBox(
          height: 10,
        ),
      if (icon1 != null)
        Expanded(
          child: ListTile(
              onTap: fun != null
                  ? () {
                      fun!();
                      controller.update();
                    }
                  : null,
              title: Icon(icon1,
                  color: fun != null
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.surface),
              subtitle: Text(
                label1!,
                textAlign: TextAlign.center,
              )),
        ),
      if (icon2 != null)
        Expanded(
          child: ListTile(
              onTap: fun2 != null
                  ? () {
                      fun2!();
                      controller.update();
                    }
                  : null,
              title: Icon(icon2,
                  color: fun2 != null
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.surface),
              subtitle: Text(
                label2!,
                textAlign: TextAlign.center,
              )),
        ),
      if (icon3 != null)
        Expanded(
          child: ListTile(
              onTap: fun3 != null
                  ? () {
                      fun3!();
                      controller.update();
                    }
                  : null,
              title: Icon(icon3,
                  color: fun3 != null
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.surface),
              subtitle: Text(
                label3!,
                textAlign: TextAlign.center,
              )),
        ),
      if (icon4 != null)
        Expanded(
          child: ListTile(
              onTap: fun4 != null
                  ? () {
                      fun4!();
                      controller.update();
                    }
                  : null,
              title: Icon(icon4,
                  color: fun4 != null
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.surface),
              subtitle: Text(
                label4!,
                textAlign: TextAlign.center,
              )),
        ),
      if (icon5 != null)
        Expanded(
          child: ListTile(
              onTap: fun5 != null
                  ? () {
                      fun5!();
                      controller.update();
                    }
                  : null,
              title: Icon(icon5,
                  color: fun5 != null
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.surface),
              subtitle: Text(
                label5!,
                textAlign: TextAlign.center,
              )),
        ),
    ];

    return Container(
      height: horizontal ? 80 : null,
      width: horizontal ? null : 80,
      color: Theme.of(context).colorScheme.surface.withOpacity(0.5),
      child: Center(
        child: horizontal
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                //mainAxisSize: MainAxisSize.max,
                children: children,
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: children),
      ),
    );
  }
}
