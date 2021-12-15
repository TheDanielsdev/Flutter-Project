import 'package:flutter/material.dart';
import 'package:kokovest/models/instance_list.dart';
import 'package:kokovest/models/subcatgories.dart';
import 'package:kokovest/pages/home_page.dart';
import 'package:kokovest/screeens/loading_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Loading(),
    );
  }
}
