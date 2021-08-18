import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:localization_f/l10n/l10n.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:localization_f/provider/local_provider.dart';
import 'package:localization_f/screens/local_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (ctx) => LocaleProvider(),
        builder: (context, child) {
          final provider = Provider.of<LocaleProvider>(context);
          return MaterialApp(
            title: 'Flutter Demo',
            supportedLocales: L10n.all,
            locale: provider.locale,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: LocalScreen(),
          );
        });
  }
}
