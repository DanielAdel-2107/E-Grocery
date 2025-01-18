part of 'theme.dart';

final class CoreThemeData {
  static ThemeData defaultTheme = ThemeData(
      useMaterial3: true,
      colorSchemeSeed: CoreThemeColor.primary,
      fontFamily: GoogleFonts.roboto().fontFamily,
      inputDecorationTheme: CoreInputTheme.defaultInputDecorationTheme,
      textTheme: const TextTheme(
        bodyLarge: TextStyle(color: CoreThemeColor.placeholder),
        bodyMedium: TextStyle(color: CoreThemeColor.placeholder),
      ),
      scaffoldBackgroundColor: Colors.white,
      brightness: Brightness.light,
      appBarTheme: const AppBarTheme(
        elevation: 0.3,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontFamily: "Gilroy",
        ),
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.light,
        ),
      ),
      elevatedButtonTheme: CoreButtonTheme.elevatedButtonThemeData,
      outlinedButtonTheme: CoreButtonTheme.outlinedButtonTheme,
      textButtonTheme: CoreButtonTheme.textButtonThemeData,
      sliderTheme: const SliderThemeData(
        showValueIndicator: ShowValueIndicator.always,
        thumbColor: Colors.white,
      ),
      tabBarTheme: const TabBarTheme(
        labelColor: CoreThemeColor.primary,
        unselectedLabelColor: CoreThemeColor.placeholder,
        labelPadding: EdgeInsets.all(CoreDefaults.padding),
        indicatorSize: TabBarIndicatorSize.label,
        labelStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color: CoreThemeColor.primary,
        ),
        unselectedLabelStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color: CoreThemeColor.placeholder,
        ),
        indicator: UnderlineTabIndicator(
          borderSide: BorderSide(
            color: CoreThemeColor.primary,
            width: 2,
          ),
        ),
      ),
      );
}