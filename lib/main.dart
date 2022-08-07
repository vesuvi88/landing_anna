import 'package:flutter/material.dart';
import 'package:landing_anna/views/first_view/first_view.dart';
import 'package:landing_anna/views/second_view/second_view.dart';
import 'package:landing_anna/widgets/navbar.dart';

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
            const FirstView(),
            const SizedBox(height: 20),
            const SecondView(),
            const SizedBox(height: 20),
            const FirstView(),
            const SizedBox(height: 20),
            const FirstView(),
          ],
        ),
      ),
    );
  }
}
