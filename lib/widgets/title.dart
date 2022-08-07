import 'package:flutter/material.dart';

class StyledTitle extends StatelessWidget {
  const StyledTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "Анна Гаранина",
      style: TextStyle(
        fontSize: 60,
        fontWeight: FontWeight.bold,
        color: Color(0xFF222222),
      ),
    );
  }
}
