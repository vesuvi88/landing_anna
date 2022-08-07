import 'package:flutter/material.dart';

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
