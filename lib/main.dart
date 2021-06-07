import 'package:alermclock/screen_home_task.dart';
import 'package:alermclock/screen_create_task.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Clock Application",
    //home: TaskHome(),
    home: CreateTaskHome(),
  ));
}
