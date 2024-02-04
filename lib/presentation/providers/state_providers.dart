import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_app/config/config.dart';

part 'state_providers.g.dart';

@Riverpod(
    keepAlive:
        true) // To keep the state alive. If not, it will be destroyed the moment we stop using it.
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

@Riverpod(
    keepAlive:
        true) // To keep the state alive. If not, it will be destroyed the moment we stop using it.
class RandomName extends _$RandomName {
  @override
  String build() => RandomGenerator.getRandomName();

  void generateRandomName() {
    state = RandomGenerator.getRandomName();
  }
}
