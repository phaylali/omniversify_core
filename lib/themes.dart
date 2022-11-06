part of omniversify_core;

/// The unified theme for the omniversify apps, more themes are  coming soon
ThemeData omniversalDarkBlueTheme() => ThemeData.dark().copyWith(
      useMaterial3: true,
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
          displayLarge: TextStyle(color: Colors.grey[100]),
          displayMedium: TextStyle(color: Colors.grey[100]),
          displaySmall: TextStyle(color: Colors.grey[100]),
          headlineLarge: TextStyle(color: Colors.grey[100]),
          headlineMedium: TextStyle(color: Colors.grey[100]),
          headlineSmall: TextStyle(color: Colors.grey[100]),
          titleLarge: TextStyle(color: Colors.grey[100]),
          titleMedium: TextStyle(color: Colors.grey[300]),
          titleSmall: TextStyle(color: Colors.grey[500]),
          bodyLarge: TextStyle(color: Colors.grey[100]),
          bodyMedium: TextStyle(color: Colors.grey[100]),
          bodySmall: TextStyle(color: Colors.grey[800]),
          labelLarge: TextStyle(color: Colors.grey[800]),
          labelMedium: TextStyle(color: Colors.grey[100]),
          labelSmall: TextStyle(color: Colors.grey[100]))),
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
              backgroundColor: MaterialStateColor.resolveWith(getDarkBlueColor),
              foregroundColor:
                  MaterialStateColor.resolveWith(getDarkBlueOverlayColor),
              shape: MaterialStateProperty.all<OutlinedBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30))))),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
              backgroundColor: MaterialStateColor.resolveWith(getDarkBlueColor),
              foregroundColor:
                  MaterialStateColor.resolveWith(getDarkBlueOverlayColor),
              shape: MaterialStateProperty.all<OutlinedBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30))))),
    );

/// Material state widgets color function for the DarkBlue theme
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

/// Material state widgets overlay color function for the DarkBlue theme
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

/// Material state text overlay color function for the DarkBlue theme
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

/// Material state icon overlay color function for the DarkBlue theme
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
