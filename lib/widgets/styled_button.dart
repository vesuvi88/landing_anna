import 'package:flutter/material.dart';
import 'package:landing_anna/widgets/subscribing_dialog.dart';

class StyledButton extends StatelessWidget {
  const StyledButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.transparent),
        side: MaterialStateProperty.all(const BorderSide()),
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      ),
      onPressed: () {
        showDialog(
          context: context,
          builder: (_) {
            return const SubscribingDialog();
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
          style: const TextStyle(
            fontSize: 16,
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}
