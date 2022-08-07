import 'package:flutter/material.dart';

class SubTitle extends StatelessWidget {
  const SubTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Похудей со мной, стрекоза!',
      style: TextStyle(
        fontSize: 22,
        color: Color(0xFF222222),
      ),
    );
  }
}
