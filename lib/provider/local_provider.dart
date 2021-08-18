import 'dart:io';

import 'package:flutter/widgets.dart';
import 'package:localization_f/l10n/l10n.dart';

class LocaleProvider extends ChangeNotifier {
  //get current system locale at app start
  Locale _locale = Locale(
    Platform.localeName.split("_")[0],
  );

  Locale get locale => _locale;

  void setLocale(Locale locale) {
    if (L10n.all.contains(locale)) {
      _locale = locale;
      notifyListeners();
    }
  }

  void useSystemLocale() {
    _locale = Locale(
      Platform.localeName.split("_")[0],
    );

    notifyListeners();
  }
}
