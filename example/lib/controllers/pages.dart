import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class PagesController extends StateNotifier<int> {
  PagesController(super.state);
  void setPosition(int val) {
    state = val;
  }
}

final pagesProvider = StateNotifierProvider<PagesController, int>((ref) {
  return PagesController(0);
});

void onPages(int index, WidgetRef ref, BuildContext context) {
  ref.read(pagesProvider.notifier).setPosition(index);
  switch (index) {
    case 0:
      context.go('/page1');
      break;
    case 1:
      context.go('/page2');
      break;
    case 2:
      context.go('/page3');
      break;
    case 3:
      context.go('/page4');
      break;
  }
}
