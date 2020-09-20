import 'package:flutter/material.dart';
import 'package:mapp/portal.dart';
import './event.dart';
import './docs.dart';
import './portal.dart';
import './ace.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: DemoWidget(),
    );
  }
}