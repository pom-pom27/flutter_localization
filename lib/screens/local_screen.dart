import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:localization_f/widgets/flag_widget.dart';

class LocalScreen extends StatefulWidget {
  const LocalScreen({Key? key}) : super(key: key);

  @override
  _LocalScreenState createState() => _LocalScreenState();
}

class _LocalScreenState extends State<LocalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Localization'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlagWidget(),
            SizedBox(
              height: 32,
            ),
            Text(
              AppLocalizations.of(context)!.language,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            Text(
              AppLocalizations.of(context)!.helloWorld,
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}
