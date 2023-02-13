import 'package:flutter/material.dart';

class Task
{
  String id;
  String title;

  Task({required this.id, required this.title});

}

List<Task> tasks=[
  for(int x=1;x<=10;x++)
  Task(id: x.toString(), title: 'Task $x'),
];