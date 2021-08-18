import 'package:flutter/material.dart';
import 'package:localization_f/l10n/l10n.dart';
import 'package:localization_f/provider/local_provider.dart';
import 'package:provider/provider.dart';

class FlagDropdown extends StatelessWidget {
  const FlagDropdown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<LocaleProvider>(context);

    return DropdownButtonHideUnderline(
      child: DropdownButton(
        value: provider.locale,
        items: L10n.all.map((locale) {
          final flag = L10n.getFlag(locale.languageCode);

          return DropdownMenuItem(
            child: Center(
              child: Text(flag),
            ),
            value: locale,
          );
        }).toList(),
        onChanged: (Locale? locale) {
          final provider = Provider.of<LocaleProvider>(context, listen: false);

          provider.setLocale(locale!);
        },
      ),
    );
  }
}
