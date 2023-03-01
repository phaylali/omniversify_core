import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchController extends StateNotifier<bool> {
  SearchController(super.state);
  void openSearch() {
    state = !state;
  }
}

final searchProvider = StateNotifierProvider<SearchController, bool>((ref) {
  return SearchController(false);
});

void onSearch(WidgetRef ref) {
  ref.read(searchProvider.notifier).openSearch();
}
