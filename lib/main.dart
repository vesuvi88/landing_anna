import 'package:flutter/material.dart';
import 'package:webapp/views/first_view/first_view.dart';
import 'widgets/navbar.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Главная страница',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: '.SF UI Text',
      ),
      home: HomePage(),
    ),
  );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            NavBar(),
            FirstView(),
            SizedBox(height: 20),
            FirstView(),
            SizedBox(height: 20),
            FirstView(),
            SizedBox(height: 20),
            FirstView(),
          ],
        ),
      ),
    );
  }
}
