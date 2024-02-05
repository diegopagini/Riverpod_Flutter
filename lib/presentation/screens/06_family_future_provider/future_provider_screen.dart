import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_app/presentation/providers/family_provider.dart';

class FamilyFutureScreen extends ConsumerStatefulWidget {
  const FamilyFutureScreen({super.key});

  @override
  FamilyFutureScreenState createState() => FamilyFutureScreenState();
}

class FamilyFutureScreenState extends ConsumerState<FamilyFutureScreen> {
  int pokemonId = 3;

  @override
  Widget build(BuildContext context) {
    final pokemonAsync = ref.watch(pokemonAsyncProvider(pokemonId));

    return Scaffold(
      appBar: AppBar(
        title: Text('PokemonId: $pokemonId'),
      ),
      body: Center(
        child: pokemonAsync.when(
            data: (data) => Text(data),
            error: (error, stackTrace) => Text('$error'),
            loading: () => const CircularProgressIndicator()),
      ),
      floatingActionButton:
          Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        FloatingActionButton(
          heroTag: 'btn-1',
          child: const Icon(Icons.plus_one),
          onPressed: () {
            setState(() {
              pokemonId++;
            });
          },
        ),
        const SizedBox(
          height: 5,
        ),
        FloatingActionButton(
          child: const Icon(Icons.exposure_minus_1),
          onPressed: () {
            setState(() {
              pokemonId--;
            });
          },
        ),
      ]),
    );
  }
}
