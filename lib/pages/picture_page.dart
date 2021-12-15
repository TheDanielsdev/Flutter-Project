import 'package:flutter/material.dart';
import 'package:kokovest/models/instance.dart';
import 'package:kokovest/models/instance_list.dart';
import 'package:kokovest/models/subcatgories.dart';

final instanceVar = InstanceList.instantFunction();

class PicturePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('welome'),
        ),
      ),
    );
  }
}
