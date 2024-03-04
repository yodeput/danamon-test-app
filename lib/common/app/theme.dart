import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static MaterialScheme lightScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff902f00),
      surfaceTint: Color(0xffa83900),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffc94c13),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff8f4c33),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffffb499),
      onSecondaryContainer: Color(0xff5c250f),
      tertiary: Color(0xff755b00),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xfff9cf5a),
      onTertiaryContainer: Color(0xff4f3c00),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      background: Color(0xfffff8f6),
      onBackground: Color(0xff251914),
      surface: Color(0xfffff8f6),
      onSurface: Color(0xff251914),
      surfaceVariant: Color(0xfffedbd0),
      onSurfaceVariant: Color(0xff594139),
      outline: Color(0xff8c7168),
      outlineVariant: Color(0xffe0bfb4),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff3c2d28),
      inverseOnSurface: Color(0xffffede7),
      inversePrimary: Color(0xffffb59a),
      primaryFixed: Color(0xffffdbcf),
      onPrimaryFixed: Color(0xff380d00),
      primaryFixedDim: Color(0xffffb59a),
      onPrimaryFixedVariant: Color(0xff812900),
      secondaryFixed: Color(0xffffdbcf),
      onSecondaryFixed: Color(0xff380d00),
      secondaryFixedDim: Color(0xffffb59a),
      onSecondaryFixedVariant: Color(0xff72361e),
      tertiaryFixed: Color(0xffffdf91),
      onTertiaryFixed: Color(0xff241a00),
      tertiaryFixedDim: Color(0xffebc24e),
      onTertiaryFixedVariant: Color(0xff594400),
      surfaceDim: Color(0xffedd5cd),
      surfaceBright: Color(0xfffff8f6),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff1ec),
      surfaceContainer: Color(0xffffe9e3),
      surfaceContainerHigh: Color(0xfffce3db),
      surfaceContainerHighest: Color(0xfff6ddd6),
    );
  }

  ThemeData light() {
    return theme(lightScheme().toColorScheme());
  }

  static MaterialScheme lightMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff7a2700),
      surfaceTint: Color(0xffa83900),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffc94c13),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff6d321a),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffa96247),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff544000),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff907000),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      background: Color(0xfffff8f6),
      onBackground: Color(0xff251914),
      surface: Color(0xfffff8f6),
      onSurface: Color(0xff251914),
      surfaceVariant: Color(0xfffedbd0),
      onSurfaceVariant: Color(0xff543e36),
      outline: Color(0xff735951),
      outlineVariant: Color(0xff90756b),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff3c2d28),
      inverseOnSurface: Color(0xffffede7),
      inversePrimary: Color(0xffffb59a),
      primaryFixed: Color(0xffc94c13),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xffa43700),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xffa96247),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff8c4a31),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff907000),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff725800),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffedd5cd),
      surfaceBright: Color(0xfffff8f6),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff1ec),
      surfaceContainer: Color(0xffffe9e3),
      surfaceContainerHigh: Color(0xfffce3db),
      surfaceContainerHighest: Color(0xfff6ddd6),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme lightHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff431100),
      surfaceTint: Color(0xffa83900),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff7a2700),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff421201),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff6d321a),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff2c2100),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff544000),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      background: Color(0xfffff8f6),
      onBackground: Color(0xff251914),
      surface: Color(0xfffff8f6),
      onSurface: Color(0xff000000),
      surfaceVariant: Color(0xfffedbd0),
      onSurfaceVariant: Color(0xff321f18),
      outline: Color(0xff543e36),
      outlineVariant: Color(0xff543e36),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff3c2d28),
      inverseOnSurface: Color(0xffffffff),
      inversePrimary: Color(0xffffe7df),
      primaryFixed: Color(0xff7a2700),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff551800),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff6d321a),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff501c07),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff544000),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff392b00),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffedd5cd),
      surfaceBright: Color(0xfffff8f6),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff1ec),
      surfaceContainer: Color(0xffffe9e3),
      surfaceContainerHigh: Color(0xfffce3db),
      surfaceContainerHighest: Color(0xfff6ddd6),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme().toColorScheme());
  }

  static MaterialScheme darkScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffb59a),
      surfaceTint: Color(0xffffb59a),
      onPrimary: Color(0xff5b1b00),
      primaryContainer: Color(0xffc94c13),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xffffb59a),
      onSecondary: Color(0xff55200a),
      secondaryContainer: Color(0xff692f18),
      onSecondaryContainer: Color(0xffffc9b6),
      tertiary: Color(0xfffff1d7),
      onTertiary: Color(0xff3e2e00),
      tertiaryContainer: Color(0xffedc450),
      onTertiaryContainer: Color(0xff463500),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      background: Color(0xff1c110c),
      onBackground: Color(0xfff6ddd6),
      surface: Color(0xff1c110c),
      onSurface: Color(0xfff6ddd6),
      surfaceVariant: Color(0xff594139),
      onSurfaceVariant: Color(0xffe0bfb4),
      outline: Color(0xffa88a80),
      outlineVariant: Color(0xff594139),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff6ddd6),
      inverseOnSurface: Color(0xff3c2d28),
      inversePrimary: Color(0xffa83900),
      primaryFixed: Color(0xffffdbcf),
      onPrimaryFixed: Color(0xff380d00),
      primaryFixedDim: Color(0xffffb59a),
      onPrimaryFixedVariant: Color(0xff812900),
      secondaryFixed: Color(0xffffdbcf),
      onSecondaryFixed: Color(0xff380d00),
      secondaryFixedDim: Color(0xffffb59a),
      onSecondaryFixedVariant: Color(0xff72361e),
      tertiaryFixed: Color(0xffffdf91),
      onTertiaryFixed: Color(0xff241a00),
      tertiaryFixedDim: Color(0xffebc24e),
      onTertiaryFixedVariant: Color(0xff594400),
      surfaceDim: Color(0xff1c110c),
      surfaceBright: Color(0xff453631),
      surfaceContainerLowest: Color(0xff170b08),
      surfaceContainerLow: Color(0xff251914),
      surfaceContainer: Color(0xff2a1d18),
      surfaceContainerHigh: Color(0xff352722),
      surfaceContainerHighest: Color(0xff40312c),
    );
  }

  ThemeData dark() {
    return theme(darkScheme().toColorScheme());
  }

  static MaterialScheme darkMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffbba3),
      surfaceTint: Color(0xffffb59a),
      onPrimary: Color(0xff2f0a00),
      primaryContainer: Color(0xffee672f),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffffbba3),
      onSecondary: Color(0xff2f0a00),
      secondaryContainer: Color(0xffcb7d60),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfffff1d7),
      onTertiary: Color(0xff3e2e00),
      tertiaryContainer: Color(0xffedc450),
      onTertiaryContainer: Color(0xff1b1200),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      background: Color(0xff1c110c),
      onBackground: Color(0xfff6ddd6),
      surface: Color(0xff1c110c),
      onSurface: Color(0xfffff9f8),
      surfaceVariant: Color(0xff594139),
      onSurfaceVariant: Color(0xffe5c4b9),
      outline: Color(0xffbb9c92),
      outlineVariant: Color(0xff997d73),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff6ddd6),
      inverseOnSurface: Color(0xff352722),
      inversePrimary: Color(0xff832a00),
      primaryFixed: Color(0xffffdbcf),
      onPrimaryFixed: Color(0xff260700),
      primaryFixedDim: Color(0xffffb59a),
      onPrimaryFixedVariant: Color(0xff651f00),
      secondaryFixed: Color(0xffffdbcf),
      onSecondaryFixed: Color(0xff260700),
      secondaryFixedDim: Color(0xffffb59a),
      onSecondaryFixedVariant: Color(0xff5d260f),
      tertiaryFixed: Color(0xffffdf91),
      onTertiaryFixed: Color(0xff181000),
      tertiaryFixedDim: Color(0xffebc24e),
      onTertiaryFixedVariant: Color(0xff443400),
      surfaceDim: Color(0xff1c110c),
      surfaceBright: Color(0xff453631),
      surfaceContainerLowest: Color(0xff170b08),
      surfaceContainerLow: Color(0xff251914),
      surfaceContainer: Color(0xff2a1d18),
      surfaceContainerHigh: Color(0xff352722),
      surfaceContainerHighest: Color(0xff40312c),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme darkHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xfffff9f8),
      surfaceTint: Color(0xffffb59a),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffffbba3),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfffff9f8),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffffbba3),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfffffaf6),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xfff0c652),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      background: Color(0xff1c110c),
      onBackground: Color(0xfff6ddd6),
      surface: Color(0xff1c110c),
      onSurface: Color(0xffffffff),
      surfaceVariant: Color(0xff594139),
      onSurfaceVariant: Color(0xfffff9f8),
      outline: Color(0xffe5c4b9),
      outlineVariant: Color(0xffe5c4b9),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff6ddd6),
      inverseOnSurface: Color(0xff000000),
      inversePrimary: Color(0xff501700),
      primaryFixed: Color(0xffffe0d6),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffffbba3),
      onPrimaryFixedVariant: Color(0xff2f0a00),
      secondaryFixed: Color(0xffffe0d6),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffffbba3),
      onSecondaryFixedVariant: Color(0xff2f0a00),
      tertiaryFixed: Color(0xffffe4a5),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xfff0c652),
      onTertiaryFixedVariant: Color(0xff1e1500),
      surfaceDim: Color(0xff1c110c),
      surfaceBright: Color(0xff453631),
      surfaceContainerLowest: Color(0xff170b08),
      surfaceContainerLow: Color(0xff251914),
      surfaceContainer: Color(0xff2a1d18),
      surfaceContainerHigh: Color(0xff352722),
      surfaceContainerHighest: Color(0xff40312c),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme().toColorScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        scaffoldBackgroundColor: colorScheme.background,
        canvasColor: colorScheme.surface,
      );

  List<ExtendedColor> get extendedColors => [];
}

class MaterialScheme {
  const MaterialScheme({
    required this.brightness,
    required this.primary,
    required this.surfaceTint,
    required this.onPrimary,
    required this.primaryContainer,
    required this.onPrimaryContainer,
    required this.secondary,
    required this.onSecondary,
    required this.secondaryContainer,
    required this.onSecondaryContainer,
    required this.tertiary,
    required this.onTertiary,
    required this.tertiaryContainer,
    required this.onTertiaryContainer,
    required this.error,
    required this.onError,
    required this.errorContainer,
    required this.onErrorContainer,
    required this.background,
    required this.onBackground,
    required this.surface,
    required this.onSurface,
    required this.surfaceVariant,
    required this.onSurfaceVariant,
    required this.outline,
    required this.outlineVariant,
    required this.shadow,
    required this.scrim,
    required this.inverseSurface,
    required this.inverseOnSurface,
    required this.inversePrimary,
    required this.primaryFixed,
    required this.onPrimaryFixed,
    required this.primaryFixedDim,
    required this.onPrimaryFixedVariant,
    required this.secondaryFixed,
    required this.onSecondaryFixed,
    required this.secondaryFixedDim,
    required this.onSecondaryFixedVariant,
    required this.tertiaryFixed,
    required this.onTertiaryFixed,
    required this.tertiaryFixedDim,
    required this.onTertiaryFixedVariant,
    required this.surfaceDim,
    required this.surfaceBright,
    required this.surfaceContainerLowest,
    required this.surfaceContainerLow,
    required this.surfaceContainer,
    required this.surfaceContainerHigh,
    required this.surfaceContainerHighest,
  });

  final Brightness brightness;
  final Color primary;
  final Color surfaceTint;
  final Color onPrimary;
  final Color primaryContainer;
  final Color onPrimaryContainer;
  final Color secondary;
  final Color onSecondary;
  final Color secondaryContainer;
  final Color onSecondaryContainer;
  final Color tertiary;
  final Color onTertiary;
  final Color tertiaryContainer;
  final Color onTertiaryContainer;
  final Color error;
  final Color onError;
  final Color errorContainer;
  final Color onErrorContainer;
  final Color background;
  final Color onBackground;
  final Color surface;
  final Color onSurface;
  final Color surfaceVariant;
  final Color onSurfaceVariant;
  final Color outline;
  final Color outlineVariant;
  final Color shadow;
  final Color scrim;
  final Color inverseSurface;
  final Color inverseOnSurface;
  final Color inversePrimary;
  final Color primaryFixed;
  final Color onPrimaryFixed;
  final Color primaryFixedDim;
  final Color onPrimaryFixedVariant;
  final Color secondaryFixed;
  final Color onSecondaryFixed;
  final Color secondaryFixedDim;
  final Color onSecondaryFixedVariant;
  final Color tertiaryFixed;
  final Color onTertiaryFixed;
  final Color tertiaryFixedDim;
  final Color onTertiaryFixedVariant;
  final Color surfaceDim;
  final Color surfaceBright;
  final Color surfaceContainerLowest;
  final Color surfaceContainerLow;
  final Color surfaceContainer;
  final Color surfaceContainerHigh;
  final Color surfaceContainerHighest;
}

extension MaterialSchemeUtils on MaterialScheme {
  ColorScheme toColorScheme() {
    return ColorScheme(
      brightness: brightness,
      primary: primary,
      onPrimary: onPrimary,
      primaryContainer: primaryContainer,
      onPrimaryContainer: onPrimaryContainer,
      secondary: secondary,
      onSecondary: onSecondary,
      secondaryContainer: secondaryContainer,
      onSecondaryContainer: onSecondaryContainer,
      tertiary: tertiary,
      onTertiary: onTertiary,
      tertiaryContainer: tertiaryContainer,
      onTertiaryContainer: onTertiaryContainer,
      error: error,
      onError: onError,
      errorContainer: errorContainer,
      onErrorContainer: onErrorContainer,
      background: background,
      onBackground: onBackground,
      surface: surface,
      onSurface: onSurface,
      surfaceVariant: surfaceVariant,
      onSurfaceVariant: onSurfaceVariant,
      outline: outline,
      outlineVariant: outlineVariant,
      shadow: shadow,
      scrim: scrim,
      inverseSurface: inverseSurface,
      onInverseSurface: inverseOnSurface,
      inversePrimary: inversePrimary,
    );
  }
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
