import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyMediumGray700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray700,
      );
  static get bodyMediumIrishGroverOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.irishGrover.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 15.fSize,
      );
  static get bodyMediumIrishGroverff3785e6 =>
      theme.textTheme.bodyMedium!.irishGrover.copyWith(
        color: Color(0XFF3785E6),
        fontSize: 15.fSize,
      );
  static get bodyMediumIrishGroverff858383 =>
      theme.textTheme.bodyMedium!.irishGrover.copyWith(
        color: Color(0XFF858383),
        fontSize: 15.fSize,
      );
  static get bodyMediumIrishGroverffffffff =>
      theme.textTheme.bodyMedium!.irishGrover.copyWith(
        color: Color(0XFFFFFFFF),
        fontSize: 15.fSize,
      );
  // Headline text style
  static get headlineLargeff3785e6 => theme.textTheme.headlineLarge!.copyWith(
        color: Color(0XFF3785E6),
      );
  static get headlineLargeffffffff => theme.textTheme.headlineLarge!.copyWith(
        color: Color(0XFFFFFFFF),
      );
  static get headlineMediumIndigo50 => theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.indigo50,
      );
  static get headlineSmallGray5001 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.gray5001,
      );
  static get headlineSmallInterOnPrimaryContainer =>
      theme.textTheme.headlineSmall!.inter.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get headlineSmallMcLarenOnPrimaryContainer =>
      theme.textTheme.headlineSmall!.mcLaren.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w400,
      );
  static get headlineSmallOnPrimaryContainer =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get headlineSmallffffffff => theme.textTheme.headlineSmall!.copyWith(
        color: Color(0XFFFFFFFF),
        fontWeight: FontWeight.w600,
      );
  static get headlineSmallffffffffLight =>
      theme.textTheme.headlineSmall!.copyWith(
        color: Color(0XFFFFFFFF),
        fontWeight: FontWeight.w300,
      );
  // Title text style
  static get titleLargeIstokWebGray600 =>
      theme.textTheme.titleLarge!.istokWeb.copyWith(
        color: appTheme.gray600,
      );
  static get titleLargeIstokWebGray700 =>
      theme.textTheme.titleLarge!.istokWeb.copyWith(
        color: appTheme.gray700,
      );
  static get titleLargeRoboto => theme.textTheme.titleLarge!.roboto.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleLargeRobotoGray600 =>
      theme.textTheme.titleLarge!.roboto.copyWith(
        color: appTheme.gray600,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeRobotoGray700 =>
      theme.textTheme.titleLarge!.roboto.copyWith(
        color: appTheme.gray700,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeRobotoGray700_1 =>
      theme.textTheme.titleLarge!.roboto.copyWith(
        color: appTheme.gray700,
      );
  static get titleLargeRobotoffffffff =>
      theme.textTheme.titleLarge!.roboto.copyWith(
        color: Color(0XFFFFFFFF),
        fontWeight: FontWeight.w500,
      );
  static get titleSmallRobotoOnPrimaryContainer =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w500,
      );
}

extension on TextStyle {
  TextStyle get mcLaren {
    return copyWith(
      fontFamily: 'McLaren',
    );
  }

  TextStyle get istokWeb {
    return copyWith(
      fontFamily: 'Istok Web',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get irishGrover {
    return copyWith(
      fontFamily: 'Irish Grover',
    );
  }
}
