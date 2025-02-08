import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;
  ColorScheme get colorSheme => Theme.of(this).colorScheme;

  Color get primaryColor => Theme.of(this).colorScheme.primary;

  Color get backgroundColor => Theme.of(this).colorScheme.surface;

  Color get secondaryColor => Theme.of(this).colorScheme.secondary;

  Color get surfaceColor => Theme.of(this).colorScheme.surface;

  Color get foregroundColor => Theme.of(this).colorScheme.surface;

  double get screenWidth => MediaQuery.of(this).size.width;

  double get screenHeight => MediaQuery.of(this).size.height;

  void openDrawer() => Scaffold.of(this).openDrawer();

  TextStyle get headingLarge => textTheme.headlineLarge!;

  TextStyle get headingMedium => textTheme.headlineMedium!;

  TextStyle get headingSmall => textTheme.headlineSmall!;

  TextStyle get subtitle => textTheme.titleMedium!;

  TextStyle get subtitle2 => textTheme.titleSmall!;

  TextStyle get bodyText => textTheme.bodyMedium!;

  TextStyle get bodyText2 => textTheme.bodySmall!;

  TextStyle get caption => textTheme.labelSmall!;

  TextStyle get button => textTheme.labelLarge!;

  void showSnackbar(String message) => ScaffoldMessenger.of(this).showSnackBar(
        SnackBar(content: Text(message)),
      );
}


/*  
...
onPressed: () => context.showSnackbar('Snachbar showing'), */
