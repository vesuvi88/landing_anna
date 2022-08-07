import 'package:flutter/material.dart';
import 'package:webapp/widgets/subscribing_dialog.dart';

class StyledButton extends StatelessWidget {
  const StyledButton({
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
