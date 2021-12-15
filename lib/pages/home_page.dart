import 'package:flutter/material.dart';
import 'package:kokovest/models/instance.dart';
import 'package:kokovest/models/instance_list.dart';
import 'package:kokovest/pages/another_page.dart';

final instanceVar = InstanceList.instantFunction();

class HomePage extends StatelessWidget {
  InstanceClass homePage;

  HomePage({required this.homePage});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.orange,
        appBar: AppBar(
          title: Text('Welcome'),
          centerTitle: true,
          backgroundColor: Colors.orange,
        ),
        body: ListView.builder(
          itemCount: instanceVar.length,
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          itemBuilder: (BuildContext context, index) {
            return Card(
              child: ListTile(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          AnotherPage(anotherPage: instanceVar[index])));
                },
                leading: ClipOval(
                  child: Image.asset(
                    'assets/' + instanceVar[index].classImage,
                    fit: BoxFit.cover,
                    width: 40,
                    height: 40,
                  ),
                ),
                title: Text(
                  instanceVar[index].className,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(instanceVar[index].classSubtitle,
                    style: TextStyle(fontStyle: FontStyle.italic)),
                trailing: instanceVar[index].classIcon,
              ),
            );
          },
        ),
      ),
    );
  }
}
