/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/futures_future_based_task_completion_base.dart';

/*
1 Future-Based Task Completion

Write a function completeTasksAsync that takes a list of tasks (as strings) 
and returns a Future<List<String>>. Each task should be "completed" asynchronously, 
and the function should return the list of completed tasks.

Assumption: The function completeTasksAsync appends " completed" to each task string.
 */

Future<List<String>> completeTasksAsync(List<String> input) async {
  
  List<String> ans = [];
  await Future.forEach(input, (element) {
    var buffer = StringBuffer(element);
    buffer.write(' completed');
    ans.add(buffer.toString());
  });
  return ans;
}