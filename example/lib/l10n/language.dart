import 'package:flutter/material.dart';
import 'package:country_flags/country_flags.dart';

class Language {
  final String code;
  final String name;
  final Locale locale;
  final String flag;
  final int id;

  Language(
    this.code,
    this.name,
    this.locale,
    this.flag,
    this.id,
  );

  static List<Language> languages() {
    return <Language>[
      Language(
        'en',
        'English',
        const Locale('en', 'GB'),
        'gb',
        1,
      ),
      Language(
        'ar',
        'العربية',
        const Locale('ar', 'MA'),
        'ma',
        2,
      ),
    ];
  }

  static Iterable<Locale> locales() {
    final List<Locale> locs = [];
    languages().forEach(
      (element) {
        locs.add(element.locale);
      },
    );
    return locs;
  }
}

SnackBar langSnack() {
  return SnackBar(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      duration: const Duration(seconds: 3),
      behavior: SnackBarBehavior.fixed,
      content: SingleChildScrollView(
        child: Column(
            children: List.generate(Language.languages().length, (index) {
          final lang = Language.languages()[index];
          return ListTile(
            leading: Text(lang.code),
            title: Text(lang.name),
            trailing: CountryFlags.flag(
              'ma',
              height: 48,
              width: 62,
              borderRadius: 8,
            ),
          );
        })),
      ));
}
