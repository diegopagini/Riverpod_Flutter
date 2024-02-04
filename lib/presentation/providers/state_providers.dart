import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_app/config/config.dart';

part 'state_providers.g.dart';

// To keep the state alive. If not, it will be destroyed the moment we stop using it.
@Riverpod(keepAlive: true)
class Counter extends _$Counter {
  @override
  int build() => 5;

  void increaseBy(int value) {
    state = state + value;
  }
}

@riverpod
class DarkMode extends _$DarkMode {
  @override
  bool build() => false;

  void toggleMode() {
    state = !state;
  }
}

// To keep the state alive. If not, it will be destroyed the moment we stop using it.
@Riverpod(keepAlive: true)
class RandomName extends _$RandomName {
  @override
  String build() => RandomGenerator.getRandomName();

  void generateRandomName() {
    state = RandomGenerator.getRandomName();
  }
}
