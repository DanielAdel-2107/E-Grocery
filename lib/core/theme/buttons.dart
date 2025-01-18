part of 'theme.dart';

final class CoreButtonTheme {
  static ElevatedButtonThemeData elevatedButtonThemeData = ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: CoreThemeColor.primary,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.all(CoreDefaults.padding),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: CoreDefaults.borderRadius,
          ),
          textStyle: const TextStyle(fontWeight: FontWeight.w700),
        ),
      );

  static OutlinedButtonThemeData outlinedButtonTheme = OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.all(CoreDefaults.padding),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: CoreDefaults.borderRadius,
          ),
          textStyle: const TextStyle(fontWeight: FontWeight.w700),
        ),
      );

  static TextButtonThemeData textButtonThemeData = TextButtonThemeData(
        style: TextButton.styleFrom(
          textStyle: GoogleFonts.lato(
            textStyle: const TextStyle(
              fontWeight: FontWeight.bold
            )
          ),
        ),
      );
}