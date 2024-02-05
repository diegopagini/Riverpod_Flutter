import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_app/config/config.dart';

part 'family_provider.g.dart';

// Anteriormente llamados family
@Riverpod(keepAlive: true)
Future<String> pokemonAsync(PokemonAsyncRef ref, int id) async {
  final pokemonName = await PokemonInformation.getPokemonName(id);
  return pokemonName;
}
