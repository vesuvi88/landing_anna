import 'package:flutter/material.dart';
import 'package:webapp/utils/responsiveLayout.dart';
import 'package:webapp/widgets/styled_button.dart';
import 'package:webapp/widgets/subtitle.dart';
import 'package:webapp/widgets/title.dart';

part 'large.dart';
part 'small.dart';

class FirstView extends StatelessWidget {
  const FirstView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      largeScreen: LargeChild(),
      smallScreen: SmallChild(),
    );
  }
}
