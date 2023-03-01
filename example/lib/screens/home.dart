import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final T = AppLocalizations.of(context);
    return Material(
        child: Center(
            child: SizedBox(
      height: 100,
      width: 100,
      child: Container(
        color: Colors.red,
        child: SizedBox(
          height: 100,
          width: 100,
          child: Text(T!.welcome('Clown')),
        ),
      ),
    )));
  }
}
