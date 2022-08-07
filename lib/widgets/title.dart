import 'package:flutter/material.dart';

class StyledTitle extends StatelessWidget {
  const StyledTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Анна Гаранина',
      style: TextStyle(
        fontSize: 60,
        fontWeight: FontWeight.bold,
        color: Color(0xFF222222),
      ),
    );
  }
}
