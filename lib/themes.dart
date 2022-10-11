part of omniversify_core;

ThemeData omniversalDarkBlueTheme() => ThemeData.dark().copyWith(
      colorScheme: ThemeData.dark().colorScheme.copyWith(
          secondary: Colors.grey[900],
          background: Colors.black,
          primary: Colors.grey[100],
          tertiary: Colors.lightBlue,
          brightness: Brightness.dark,
          surface: Colors.green[900],
          onError: Colors.red[900]),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      focusColor: Colors.blue[400],
      floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.grey[700],
          extendedTextStyle:
              TextStyle(inherit: false, color: Colors.grey[100], fontSize: 14)),
      dialogBackgroundColor: Colors.grey[900],
      scaffoldBackgroundColor: Colors.black,
      textTheme: GoogleFonts.tajawalTextTheme(TextTheme(
          headline1: TextStyle(color: Colors.grey[100]),
          headline2: TextStyle(color: Colors.grey[100]),
          headline3: TextStyle(color: Colors.grey[100]),
          headline4: TextStyle(color: Colors.grey[100]),
          headline5: TextStyle(color: Colors.grey[100]),
          headline6: TextStyle(color: Colors.grey[100]),
          subtitle1: TextStyle(color: Colors.grey[300]),
          subtitle2: TextStyle(color: Colors.grey[500]),
          bodyText1: TextStyle(color: Colors.grey[100]),
          bodyText2: TextStyle(color: Colors.grey[100]),
          button: TextStyle(color: Colors.grey[800]),
          overline: TextStyle(color: Colors.grey[100]),
          caption: TextStyle(color: Colors.grey[100]))),
      navigationBarTheme: NavigationBarThemeData(
        backgroundColor: Colors.grey[900],
        indicatorColor: Colors.grey[100],
        iconTheme: MaterialStateProperty.resolveWith(getDarkBlueOverlayIcon),
        labelTextStyle: MaterialStateProperty.all(
          GoogleFonts.tajawal(
              fontSize: 16,
              height: 1.5,
              fontWeight: FontWeight.w600,
              color: Colors.grey[100]),
        ),
      ),
      navigationRailTheme: NavigationRailThemeData(
        selectedLabelTextStyle: GoogleFonts.tajawal(
            fontSize: 16,
            height: 2,
            fontWeight: FontWeight.w600,
            color: Colors.grey[100]),
        unselectedLabelTextStyle: GoogleFonts.tajawal(
            fontSize: 16,
            height: 2,
            fontWeight: FontWeight.w600,
            color: Colors.grey[100]),
        useIndicator: true,
        backgroundColor: Colors.grey[800],
        indicatorColor: Colors.grey[100],
        labelType: NavigationRailLabelType.all,
        selectedIconTheme: IconThemeData(color: Colors.grey[800]),
        unselectedIconTheme: IconThemeData(color: Colors.grey[100]),
      ),
      drawerTheme: DrawerThemeData(backgroundColor: Colors.grey[800]),
      listTileTheme: const ListTileThemeData(),
      outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
              //elevation: MaterialStateProperty.all(10),
              backgroundColor: MaterialStateColor.resolveWith(getDarkBlueColor),
              foregroundColor:
                  MaterialStateColor.resolveWith(getDarkBlueOverlayColor),
              shape: MaterialStateProperty.all<OutlinedBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30))))),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
              //elevation: MaterialStateProperty.all(10),
              backgroundColor: MaterialStateColor.resolveWith(getDarkBlueColor),
              foregroundColor:
                  MaterialStateColor.resolveWith(getDarkBlueOverlayColor),
              shape: MaterialStateProperty.all<OutlinedBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30))))),
    );
Color getDarkBlueColor(Set<MaterialState> states) {
  const Set<MaterialState> interactiveStates = <MaterialState>{
    MaterialState.pressed,
    MaterialState.hovered,
    MaterialState.focused,
  };
  if (states.any(interactiveStates.contains)) {
    return Colors.grey[700]!;
  }
  return Colors.grey[800]!;
}

Color getDarkBlueOverlayColor(Set<MaterialState> states) {
  const Set<MaterialState> interactiveStates = <MaterialState>{
    MaterialState.pressed,
    MaterialState.hovered,
    MaterialState.focused,
  };
  if (states.any(interactiveStates.contains)) {
    return Colors.blue[100]!;
  }
  return Colors.blue[100]!;
}

TextStyle getDarkBlueOverlayTextStyle(Set<MaterialState> states) {
  const Set<MaterialState> interactiveStates = <MaterialState>{
    MaterialState.pressed,
    MaterialState.hovered,
    MaterialState.focused,
  };
  if (states.any(interactiveStates.contains)) {
    return TextStyle(color: Colors.blue[100]!);
  }
  return TextStyle(color: Colors.blue[100]!);
}

IconThemeData getDarkBlueOverlayIcon(Set<MaterialState> states) {
  const Set<MaterialState> interactiveStates = <MaterialState>{
    MaterialState.pressed,
    MaterialState.hovered,
    MaterialState.focused,
    MaterialState.selected,
  };
  if (states.any(interactiveStates.contains)) {
    return IconThemeData(color: Colors.grey[800]!);
  }
  return IconThemeData(color: Colors.grey[100]!);
}
