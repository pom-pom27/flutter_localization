import 'package:flutter/material.dart';
import 'package:localization_f/l10n/l10n.dart';

class FlagWidget extends StatefulWidget {
  const FlagWidget({Key? key}) : super(key: key);

  @override
  _FlagWidgetState createState() => _FlagWidgetState();
}

class _FlagWidgetState extends State<FlagWidget> {
  @override
  Widget build(BuildContext context) {
    final locale = Localizations.localeOf(context);

    final flag = L10n.getFlag(locale.countryCode);
    return Center(
      child: CircleAvatar(
        backgroundColor: Colors.white,
        radius: 72,
        child: Text(
          flag,
          style: TextStyle(fontSize: 80),
        ),
      ),
    );
  }
}
