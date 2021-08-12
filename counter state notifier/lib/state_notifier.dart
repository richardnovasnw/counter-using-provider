import 'package:flutter/material.dart';
import 'package:state_notifier/state_notifier.dart';

import 'local_storage.dart';

class Counter extends StateNotifier<int> with LocatorMixin {
  Counter() : super(0);

  void increment() {
    state++;
  }

  void reset() {
    state = 0;
  }

  void decrement() {
    state--;
  }

  @protected
  @override
  set state(int value) {
    read<ILocalStorage>().saveInt('store', value);
    super.state = value;
  }
}
