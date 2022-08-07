import 'package:flutter/material.dart';
import 'package:webapp/widgets/subscribing_dialog.dart';
import 'widgets/navbar.dart';
import 'utils/responsiveLayout.dart';

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
    return Container(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              NavBar(),
              Body(),
              Body(),
              Body(),
              Body(),
            ],
          ),
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      largeScreen: LargeChild(),
      smallScreen: SmallChild(),
    );
  }
}

class LargeChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          FractionallySizedBox(
            alignment: Alignment.centerRight,
            widthFactor: .6,
            child: Image.network("assets/cat-lady.png", scale: .85),
          ),
          FractionallySizedBox(
            alignment: Alignment.centerLeft,
            widthFactor: .6,
            child: Padding(
              padding: EdgeInsets.only(left: 48),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Title(),
                  SizedBox(height: 20),
                  SubTitle(),
                  SizedBox(height: 40),
                  SubscribeButton(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SubscribeButton extends StatelessWidget {
  const SubscribeButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.transparent),
        side: MaterialStateProperty.all(BorderSide()),
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      ),
      onPressed: () {
        showDialog(
          context: context,
          builder: (_) {
            return SubscribingDialog();
          },
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 40,
        ),
        child: Text(
          'Подписаться'.toUpperCase(),
          style: TextStyle(
            fontSize: 16,
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}

class SubTitle extends StatelessWidget {
  const SubTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "Похудей со мной, стрекоза!",
      style: TextStyle(
        fontSize: 22,
        color: Color(0xFF222222),
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "Анна Гаранина",
      style: TextStyle(
          fontSize: 60, fontWeight: FontWeight.bold, color: Color(0xFF222222)),
    );
  }
}

class SmallChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Title(),
            SubTitle(),
            SizedBox(height: 30),
            Center(
              child: Image.network("assets/cat-lady.png", scale: 1),
            ),
            SizedBox(height: 32),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: SubscribeButton(),
            ),
          ],
        ),
      ),
    );
  }
}
