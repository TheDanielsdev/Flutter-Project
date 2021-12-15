import 'package:flutter/material.dart';
import 'package:kokovest/pages/home_page.dart';

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => HomePage(
                    homePage: instanceVar[0],
                  )));
    });
    return MaterialApp(
      home: WillPopScope(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/earth_is_my_body__water_is_my_blood____by_snowysowl_demmzeg-pre.jpg',
                  ),
                  fit: BoxFit.cover),
            ),
            child: Center(
              child: CircularProgressIndicator(
                strokeWidth: 10,
                color: Colors.orange,
              ),
            ),
          ),
        ),
        onWillPop: () async {
          return false;
        },
      ),
    );
  }
}
