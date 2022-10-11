part of omniversify_core;

class Colorz {
  Colorz(
    this.context,
  );
  final BuildContext context;
  Color? get e => Theme.of(context).colorScheme.onError;
  Color? get p => Theme.of(context).colorScheme.primary;
  Color? get s => Theme.of(context).colorScheme.secondary;
  Color? get t => Theme.of(context).colorScheme.tertiary;
  Color? get b => Theme.of(context).colorScheme.background;
  Color? get ts => Colors.transparent;
  Color? get g => Theme.of(context).colorScheme.surface;
}

class Textz {
  Textz(
    this.context,
  );
  final BuildContext context;
  TextStyle? get sub1 => Theme.of(context).textTheme.subtitle1;
  TextStyle? get sub2 => Theme.of(context).textTheme.subtitle2;
  TextStyle? get h1 => Theme.of(context).textTheme.headline1;
  TextStyle? get h2 => Theme.of(context).textTheme.headline2;
  TextStyle? get h3 => Theme.of(context).textTheme.headline3;
  TextStyle? get h4 => Theme.of(context).textTheme.headline4;
  TextStyle? get h5 => Theme.of(context).textTheme.headline5;
  TextStyle? get h6 => Theme.of(context).textTheme.headline6;
}
