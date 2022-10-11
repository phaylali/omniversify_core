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
  TextStyle? get sub1 => Theme.of(context).textTheme.titleMedium;
  TextStyle? get sub2 => Theme.of(context).textTheme.titleSmall;
  TextStyle? get h1 => Theme.of(context).textTheme.displayLarge;
  TextStyle? get h2 => Theme.of(context).textTheme.displayMedium;
  TextStyle? get h3 => Theme.of(context).textTheme.displaySmall;
  TextStyle? get h4 => Theme.of(context).textTheme.headlineMedium;
  TextStyle? get h5 => Theme.of(context).textTheme.headlineSmall;
  TextStyle? get h6 => Theme.of(context).textTheme.titleLarge;
}
