import 'package:app/controllers/language.dart';
import 'package:app/l10n/language.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Center(
            child: SizedBox(
      height: 100,
      width: 100,
      child: Container(
        color: Colors.yellow,
        child: const SizedBox(
          height: 100,
          width: 100,
          child: Text('Profile'),
        ),
      ),
    )));
  }
}

void onLocale(Language val, WidgetRef ref) {
  ref.read(langProvider.notifier).setLocale(val);
}
