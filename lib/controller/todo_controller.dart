import 'package:deploy_assignment/model/todoModel.dart';
import 'package:get/get.dart';

class TodoController extends GetxController {
  var todos = <Todo>[].obs;

  void addTodo(String title) {
    todos.add(Todo(title: title));
  }

  void toggleTodoStatus(int index) {
    todos[index].isCompleted = !todos[index].isCompleted;
    todos.refresh();
  }
}
