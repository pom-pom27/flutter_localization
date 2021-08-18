import 'package:flutter/cupertino.dart';

class L10n {
  static const all = [
    const Locale('en'),
    const Locale('ar'),
    const Locale('hi'),
    const Locale('es'),
    const Locale('id'),
  ];

  static String getFlag(String countryCode) {
    switch (countryCode) {
      case 'ar':
        return '🇦🇪';
      case 'hi':
        return '🇮🇳';
      case 'es':
        return '🇪🇸';
      case 'id':
        return '🇮🇩';
      case 'en':
      default:
        return '🇺🇸';
    }
  }
}
