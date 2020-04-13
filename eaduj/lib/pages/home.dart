import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'info.dart';

var Cor01 = const Color(0xffdedede);

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.only(top: 220, left: 40, right: 40),
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 150,
              child: Image.asset('assets/logo-uj.png'),
            ),
            SizedBox(
              height: 230,
            ),
            SizedBox(
              height: 30,
              child: Image.asset('assets/logo-keven.png'),
            ),
            SizedBox(
              child: Center(
                child: Text(
                  'Keven Baraúna - 2020',
                  style: TextStyle(color: Cor01),
                ),
              ),
            ),
            SizedBox(
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Info()));
                },
                tooltip: 'Incremente',
                child: Icon(
                  Icons.assignment_turned_in,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
