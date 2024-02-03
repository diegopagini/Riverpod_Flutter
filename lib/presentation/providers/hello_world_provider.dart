import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'hello_world_provider.g.dart';

// Provider de solo lectura
@riverpod
String helloWorld(HelloWorldRef ref) {
  return 'Hola Mundo';
}
