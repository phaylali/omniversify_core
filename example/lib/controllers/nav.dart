import 'package:app/controllers/theme.dart';
import 'package:app/l10n/language.dart';
import 'package:app/screens/profile.dart';
import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class NavController extends StateNotifier<int> {
  NavController(super.state);
  void setPosition(int val) {
    state = val;
  }
}

final navProvider = StateNotifierProvider<NavController, int>((ref) {
  return NavController(0);
});

void onNav(int index, WidgetRef ref, BuildContext context) {
  ref.read(navProvider.notifier).setPosition(index);
  switch (index) {
    case 0:
      context.go('/');
      break;
    case 1:
      context.go('/discover');
      break;
    case 2:
      context.go('/profile');
      break;
    case 3:
      context.go('/settings');

      break;
    case 4:
      showDialog(
          context: context,
          builder: (contexto) {
            return Dialog(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Column(
                      children:
                          List.generate(Language.languages().length, (index) {
                    final lang = Language.languages()[index];
                    return SizedBox(
                      width: 300,
                      child: ListTile(
                        leading: CountryFlags.flag(
                          lang.flag,
                          height: 40,
                          width: 80,
                        ),
                        title: Center(child: Text(lang.name)),
                        onTap: () {
                          onLocale(lang, ref);
                        },
                      ),
                    );
                  })),
                ),
              ),
            );
          });
      break;
    case 5:
      ref.read(darkModeProvider.notifier).toggle();
      break;
  }
}
