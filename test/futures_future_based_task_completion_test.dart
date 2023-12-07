import 'package:futures_future_based_task_completion/futures_future_based_task_completion.dart';
import 'package:test/test.dart';

void main() {
  test('completeTasksAsync completes a list of tasks asynchronously', () async {
    var tasks = ['Task 1', 'Task 2', 'Task 3'];
    var completedTasks = await completeTasksAsync(tasks);
    expect(completedTasks,
        equals(['Task 1 completed', 'Task 2 completed', 'Task 3 completed']));
  });
}
