part of omniversify_core;

/// The unified theme for the omniversify apps, more themes are  coming soon
ThemeData gamerTheme() => ThemeData.dark().copyWith(
      useMaterial3: true,
      colorScheme: ThemeData.dark().colorScheme.copyWith(
            secondary: Colors.grey[900],
            background: Colors.black,
            primary: Colors.grey[100],
            tertiary: Colors.red[900],
            brightness: Brightness.dark,
            surface: Colors.red[900]!.withAlpha(40),
            onError: Colors.red[900],
            onSurface: Colors.green[900],
          ),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      focusColor: Colors.blue[400],
      floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.red[900]!.withAlpha(40),
          foregroundColor: Colors.red[900]!,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: BorderSide(color: Colors.red[900]!)),
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
        backgroundColor: Colors.red[900]!.withAlpha(40),
        indicatorColor: Colors.red[900]!.withAlpha(40),
        surfaceTintColor: Colors.black,
        indicatorShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
            side: BorderSide(color: Colors.red[900]!)),
        iconTheme: MaterialStateProperty.resolveWith(getOverlayIcon),
        labelTextStyle: MaterialStateProperty.all(
          GoogleFonts.tajawal(
              fontSize: 16,
              height: 1.5,
              fontWeight: FontWeight.w600,
              color: Colors.grey[100]),
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.red[900]!.withAlpha(40),
          landscapeLayout: BottomNavigationBarLandscapeLayout.centered),
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
        minWidth: 80,
        minExtendedWidth: 200,
        backgroundColor: Colors.red[900]!.withAlpha(40),
        indicatorColor: Colors.red[900]!.withAlpha(80),
        selectedIconTheme: IconThemeData(color: Colors.grey[100]),
        unselectedIconTheme: IconThemeData(color: Colors.grey[100]),
      ),
      drawerTheme: DrawerThemeData(backgroundColor: Colors.grey[800]),
      listTileTheme: const ListTileThemeData(),
      radioTheme: RadioThemeData(
          fillColor: MaterialStateColor.resolveWith(getOverlayColor)),
      outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
              backgroundColor: MaterialStateColor.resolveWith(getColor),
              foregroundColor: MaterialStateColor.resolveWith(getOverlayColor),
              side: MaterialStateBorderSide.resolveWith(getBorderIcon),
              shape: MaterialStateProperty.all<OutlinedBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30))))),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
              backgroundColor: MaterialStateColor.resolveWith(getColor),
              foregroundColor: MaterialStateColor.resolveWith(getOverlayColor),
              shape: MaterialStateProperty.all<OutlinedBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30))))),
    );

/// Material state widgets color function for the DarkBlue theme
Color getColor(Set<MaterialState> states) {
  const Set<MaterialState> interactiveStates = <MaterialState>{
    MaterialState.pressed,
    MaterialState.hovered,
    MaterialState.focused,
  };
  if (states.any(interactiveStates.contains)) {
    return Colors.red[900]!;
  }
  return Colors.red[900]!.withAlpha(40);
}

/// Material state widgets overlay color function for the DarkBlue theme
Color getOverlayColor(Set<MaterialState> states) {
  const Set<MaterialState> interactiveStates = <MaterialState>{
    MaterialState.pressed,
    MaterialState.hovered,
    MaterialState.focused,
  };
  if (states.any(interactiveStates.contains)) {
    return Colors.red[900]!;
  }
  return Colors.red[900]!;
}

/// Material state text overlay color function for the DarkBlue theme
TextStyle getOverlayTextStyle(Set<MaterialState> states) {
  const Set<MaterialState> interactiveStates = <MaterialState>{
    MaterialState.pressed,
    MaterialState.hovered,
    MaterialState.focused,
  };
  if (states.any(interactiveStates.contains)) {
    return TextStyle(color: Colors.grey[100]!);
  }
  return TextStyle(color: Colors.grey[100]!);
}

/// Material state icon overlay color function for the DarkBlue theme
IconThemeData getOverlayIcon(Set<MaterialState> states) {
  const Set<MaterialState> interactiveStates = <MaterialState>{
    MaterialState.pressed,
    MaterialState.hovered,
    MaterialState.focused,
    MaterialState.selected,
  };
  if (states.any(interactiveStates.contains)) {
    return IconThemeData(color: Colors.grey[100]!);
  }
  return IconThemeData(color: Colors.grey[100]!);
}

BorderSide getBorderIcon(Set<MaterialState> states) {
  const Set<MaterialState> interactiveStates = <MaterialState>{
    MaterialState.pressed,
    MaterialState.hovered,
    MaterialState.focused,
    MaterialState.selected,
  };
  if (states.any(interactiveStates.contains)) {
    return BorderSide(color: Colors.red[800]!);
  }
  return BorderSide(color: Colors.red[900]!);
}
