import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_app/presentation/providers/stream_provider.dart';

class StreamProviderScreen extends StatelessWidget {
  const StreamProviderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stream Provider'),
      ),
      body: const StreamView(),
    );
  }
}

class StreamView extends ConsumerWidget {
  const StreamView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final users = ref.watch(usersInChatProvider);

    if (users.isLoading) {
      return const Expanded(child: Center(child: CircularProgressIndicator()));
    }

    if (users.hasError) {
      return Expanded(
        child: Center(
          child: Text('${users.error}'),
        ),
      );
    }

    final value = users.value!;

    return ListView.builder(
      itemCount: value.length,
      itemBuilder: (context, index) {
        final user = value[index];

        return ListTile(
          title: Text(user),
        );
      },
    );
  }
}
