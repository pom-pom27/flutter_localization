import 'package:flutter/widgets.dart';
import 'package:localization_f/l10n/l10n.dart';

class LocaleProvider extends ChangeNotifier {
  Locale _locale = Locale('en');

  Locale get locale => _locale;

  void setLocale(Locale locale) {
    if (L10n.all.contains(locale)) {
      _locale = locale;
      notifyListeners();
    }
  }

  void clearLocale() {
    _locale = Locale('en');

    notifyListeners();
  }
}
