import 'dart:async';

import '../users_repository.dart';

abstract class TodosRepository {
  Future<void> addNewTodo(FirestoreUser user);

  Future<void> deleteTodo(FirestoreUser user);

  Stream<List<FirestoreUser>> todos();

  Future<void> updateTodo(FirestoreUser user);
}
