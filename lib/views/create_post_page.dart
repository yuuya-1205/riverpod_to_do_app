import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CreatePostPage extends ConsumerWidget {
  const CreatePostPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TODO作成'),
      ),
      body: Column(
        children: [
          const Text('こんにち'),
          ElevatedButton(
            onPressed: () {},
            child: const Text('コン値は'),
          ),
        ],
      ),

      // floatingActionButton: FloatingActionButton(
      //   child: const Icon(Icons.add),
      //   onPressed: () {
      //     ref.read(todosProvider.notifier).addTodo(
      //           // 適当なデータを渡しています
      //           Post(
      //               id: '${ref.read(todosProvider.notifier).state.length}',
      //               text: 'メモ${ref.read(todosProvider.notifier).state.length}'),
      //         );
      //   },
      // ),
    );
  }
}
