import 'package:flutter/material.dart';
import 'package:kokovest/helpers/color_helper.dart';
import 'package:kokovest/models/instance.dart';
import 'package:kokovest/models/instance_list.dart';
import 'package:kokovest/models/subcatgories.dart';
import 'package:kokovest/pages/home_page.dart';
import 'package:kokovest/pages/picture_page.dart';

final instanceVar = InstanceList.instantFunction();

class AnotherPage extends StatefulWidget {
  InstanceClass anotherPage;

  AnotherPage({
    required this.anotherPage,
  });

  @override
  State<AnotherPage> createState() => _AnotherPageState();
}

class _AnotherPageState extends State<AnotherPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: ColorHelper.Ornge,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => PicturePage()));
                  },
                  child:
                      Image.asset('assets/' + widget.anotherPage.classImage)),
              SizedBox(
                height: 10,
              ),
              Text(widget.anotherPage.className)
            ],
          ),
        ),
      ),
    );
  }
}
