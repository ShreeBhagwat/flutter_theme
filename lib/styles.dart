import 'package:flutter/material.dart';

class Styles {
  static const _defaultTextStyle =
      TextStyle(fontWeight: FontWeight.normal, fontSize: 12);

  ThemeData getTheme(BuildContext context, bool isDartTheme) {
    return isDartTheme ? setBlackTheme(context) : setWhiteTheme(context);
  }

  static ThemeData setWhiteTheme(BuildContext context) {
    return ThemeData(
        primaryColor: Colors.white,
        backgroundColor: Colors.white,
        scaffoldBackgroundColor: Colors.grey.shade100,
        indicatorColor: Colors.black,
        hintColor: Colors.grey,
        errorColor: Colors.red,
        highlightColor: Colors.grey.shade200,
        focusColor: Colors.black,
        disabledColor: Colors.grey.shade300,
        cardColor: Colors.grey.shade100,
        brightness: Brightness.light,
        buttonTheme: Theme.of(context).buttonTheme.copyWith(
              colorScheme: const ColorScheme.light(),
            ),
        appBarTheme:
            const AppBarTheme(backgroundColor: Colors.white, elevation: 0));
  }

  static ThemeData setBlackTheme(BuildContext context) {
    return ThemeData(
        primaryColor: Colors.black,
        backgroundColor: Colors.black,
        scaffoldBackgroundColor: Colors.grey.shade700,
        indicatorColor: Colors.white,
        hintColor: Colors.grey,
        errorColor: Colors.red[800],
        highlightColor: Colors.grey.shade200,
        focusColor: Colors.black,
        disabledColor: Colors.grey.shade300,
        cardColor: Colors.grey.shade100,
        brightness: Brightness.light,
        buttonTheme: Theme.of(context).buttonTheme.copyWith(
              colorScheme: const ColorScheme.dark(),
            ),
        appBarTheme:
            const AppBarTheme(backgroundColor: Colors.black, elevation: 0));
  }

  static TextTheme textTheme(BuildContext context) {
    return TextTheme(
      displayLarge: _defaultTextStyle.copyWith(
          fontSize: 32,
          fontWeight: FontWeight.bold,
          color: Theme.of(context).indicatorColor),
      displayMedium: _defaultTextStyle.copyWith(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Theme.of(context).indicatorColor),
      displaySmall: _defaultTextStyle.copyWith(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Theme.of(context).indicatorColor),
      titleLarge: _defaultTextStyle.copyWith(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Theme.of(context).indicatorColor),
      titleMedium: _defaultTextStyle.copyWith(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Theme.of(context).indicatorColor),
      titleSmall: _defaultTextStyle.copyWith(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Theme.of(context).indicatorColor),
      bodyLarge: _defaultTextStyle.copyWith(
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: Theme.of(context).indicatorColor),
      bodyMedium: _defaultTextStyle.copyWith(
          fontSize: 14,
          fontWeight: FontWeight.normal,
          color: Theme.of(context).indicatorColor),
      bodySmall: _defaultTextStyle.copyWith(
          fontSize: 12,
          fontWeight: FontWeight.normal,
          color: Theme.of(context).indicatorColor),
    );
  }
}
