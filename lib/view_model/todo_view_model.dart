import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_to_do_app/models/post.dart';

class TodosNotifier extends StateNotifier<List<Post>> {
  TodosNotifier()
      : super([
          // 初期値として適当なデータを入れています
          Post(id: '0', text: 'メモ0'),
          Post(id: '1', text: 'メモ1'),
          Post(id: '2', text: 'メモ2'),
        ]);

  void addTodo(Post post) {
    // stateのみ変更の処理をしているが、DBの操作もここで追記必要
    state = [...state, post];
  }

  void removeTodo(String todoId) {
    // stateのみ変更の処理をしているが、DBの操作もここで追記必要
    state = [
      for (final post in state)
        if (post.id != todoId) post,
    ];
  }
}

final todosProvider = StateNotifierProvider<TodosNotifier, List<Post>>((ref) {
  return TodosNotifier();
});
