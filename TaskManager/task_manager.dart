import 'dart:developer';

import 'task.dart';

class TaskManager {
  
  List<Task> tasks = [];

  void addTask(Task task) {
    tasks.add(task);
  }

  List<Task> viewTasks() {
    return tasks;
  }

  List<Task> viewCompletedTasks() {
    List<Task> completedTasks = [];
    for (int i = 0; i < tasks.length; i++) {
      if (tasks[i].status == "completed") {
        completedTasks.add(tasks[i]);
      }
    }
    return completedTasks;
  }

  List<Task> viewPendingTasks() {
    List<Task> pendingTasks = [];
    for (int i = 0; i < tasks.length; i++) {
      if (tasks[i].status == "pending") {
        pendingTasks.add(tasks[i]);
      }
    }
    return pendingTasks;
  }

  Task? editTask(int taskid, [String? title, String? description, DateTime? date, String? status]) {
    if (taskid < tasks.length) {
      Task task = tasks[taskid - 1];
      if (title != null) {
        task.title = title;
      }
      if (description != null) {
        task.description = description;
      }
      if (date != null) {
        task.date = date;
      }
      if (status != null) {
        task.status = status;
      }
      return task;
    }
    return null;
  }

  Task? removeTask(int taskid) {
    if (taskid < tasks.length) {
      Task task = tasks.removeAt(taskid - 1);
      return task;
    }
    return null;
  }
}

