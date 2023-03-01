import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// The unified theme for the omniversify apps, more themes are  coming soon

ThemeData flexLight() => FlexThemeData.light(
      surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
      blendLevel: 20,
      fontFamily: "Tajawal",
      useMaterial3ErrorColors: true,
      subThemesData: const FlexSubThemesData(
        inputDecoratorBorderType: FlexInputBorderType.outline,
        inputDecoratorIsFilled: true,
        inputDecoratorRadius: 180,
        inputDecoratorUnfocusedHasBorder: false,
        useTextTheme: true,
        fabUseShape: true,
        navigationBarLabelTextStyle: TextStyle(fontSize: 15),
        navigationBarOpacity: 0,
        navigationBarHeight: 80,
        outlinedButtonRadius: 180,
      ),
      colorScheme: flexSchemeLight,
      visualDensity: FlexColorScheme.comfortablePlatformDensity,
      useMaterial3: true,
    );

ThemeData flexDark() => FlexThemeData.dark(
      surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
      blendLevel: 8,
      fontFamily: "Tajawal",
      useMaterial3ErrorColors: true,
      darkIsTrueBlack: true,
      subThemesData: const FlexSubThemesData(
        inputDecoratorBorderType: FlexInputBorderType.outline,
        inputDecoratorIsFilled: true,
        inputDecoratorRadius: 180,
        inputDecoratorUnfocusedHasBorder: false,
        useTextTheme: true,
        fabUseShape: true,
        navigationBarLabelTextStyle: TextStyle(fontSize: 15),
        navigationBarOpacity: 0,
        navigationBarHeight: 80,
        outlinedButtonRadius: 180,
      ),
      colorScheme: flexSchemeDark,
      visualDensity: FlexColorScheme.comfortablePlatformDensity,
      useMaterial3: true,
    );
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
      iconTheme: IconThemeData(color: Colors.red[900]!.withAlpha(100)),
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
          indicatorShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
              side: BorderSide(color: Colors.red[900]!)),
          indicatorColor: Colors.red[900]!.withAlpha(80),
          backgroundColor: Colors.red[900]!.withAlpha(40),
          labelTextStyle:
              MaterialStateTextStyle.resolveWith(getOverlayTextStyle)),
      navigationRailTheme: NavigationRailThemeData(
        indicatorShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
            side: BorderSide(color: Colors.red[900]!)),
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
        selectedIconTheme: IconThemeData(color: Colors.blue[900]),
        unselectedIconTheme: IconThemeData(color: Colors.blue[900]),
      ),
      drawerTheme: DrawerThemeData(backgroundColor: Colors.grey[800]),
      listTileTheme: const ListTileThemeData(tileColor: Colors.transparent),
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
    return Colors.red[900]!.withAlpha(100);
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

const ColorScheme flexSchemeDark = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xffffb4ac),
  onPrimary: Color(0xff690007),
  primaryContainer: Color(0xff93000e),
  onPrimaryContainer: Color(0xffffdad6),
  secondary: Color(0xffe7bdb8),
  onSecondary: Color(0xff442927),
  secondaryContainer: Color(0xff5d3f3c),
  onSecondaryContainer: Color(0xffffdad6),
  tertiary: Color(0xffe0c38c),
  onTertiary: Color(0xff3f2d04),
  tertiaryContainer: Color(0xff584419),
  onTertiaryContainer: Color(0xfffedea6),
  error: Color(0xffffb4ab),
  onError: Color(0xff690005),
  errorContainer: Color(0xff93000a),
  onErrorContainer: Color(0xffffb4ab),
  background: Color(0xff1e1816),
  onBackground: Color(0xffede0de),
  surface: Color(0xff1e1816),
  onSurface: Color(0xffede0de),
  surfaceVariant: Color(0xff4f3e3c),
  onSurfaceVariant: Color(0xffd8c2bf),
  outline: Color(0xffa08c8a),
  outlineVariant: Color(0xff534341),
  shadow: Color(0xff000000),
  scrim: Color(0xff000000),
  inverseSurface: Color(0xfff6edec),
  onInverseSurface: Color(0xff362f2e),
  inversePrimary: Color(0xffb91d20),
  surfaceTint: Color(0xffffb4ac),
);
const ColorScheme flexSchemeLight = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xffb91d20),
  onPrimary: Color(0xffffffff),
  primaryContainer: Color(0xffffdad6),
  onPrimaryContainer: Color(0xff410003),
  secondary: Color(0xff775653),
  onSecondary: Color(0xffffffff),
  secondaryContainer: Color(0xffffdad6),
  onSecondaryContainer: Color(0xff2c1513),
  tertiary: Color(0xff725b2e),
  onTertiary: Color(0xffffffff),
  tertiaryContainer: Color(0xfffedea6),
  onTertiaryContainer: Color(0xff261900),
  error: Color(0xffffb4ab),
  onError: Color(0xff690005),
  errorContainer: Color(0xff93000a),
  onErrorContainer: Color(0xffffb4ab),
  //error: Color(0xffba1a1a),
  //onError: Color(0xffffffff),
  //errorContainer: Color(0xffffdad6),
  //onErrorContainer: Color(0xff410002),
  background: Color(0xfffcf3f7),
  onBackground: Color(0xff201a19),
  surface: Color(0xfffcf3f7),
  onSurface: Color(0xff201a19),
  surfaceVariant: Color(0xfff2d6d4),
  onSurfaceVariant: Color(0xff534341),
  outline: Color(0xff857371),
  outlineVariant: Color(0xffd8c2bf),
  shadow: Color(0xff000000),
  scrim: Color(0xff000000),
  inverseSurface: Color(0xff3a2e2d),
  onInverseSurface: Color(0xfffbeeec),
  inversePrimary: Color(0xffffb4ac),
  surfaceTint: Color(0xffb91d20),
);
