import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';

class CountNotifier extends FamilyNotifier<int, int> {
  @override
  int build(int arg) {
    startCount();
    return arg;
  }

  void startCount() {
    final timer = Timer.periodic(const Duration(milliseconds: 40), (timer) {
      state = 10 * arg * timer.tick;
    });
    Future.delayed(const Duration(seconds: 6), timer.cancel);
  }
}

final countProvider =
    NotifierProvider.family<CountNotifier, int, int>(CountNotifier.new);
