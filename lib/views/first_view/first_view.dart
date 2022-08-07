import 'package:flutter/material.dart';
import 'package:landing_anna/svg_icons.dart';
import 'package:landing_anna/utils/responsive_layout.dart';
import 'package:landing_anna/widgets/styled_button.dart';
import 'package:landing_anna/widgets/subtitle.dart';
import 'package:landing_anna/widgets/title.dart';

part 'large.dart';
part 'small.dart';

class FirstView extends StatelessWidget {
  const FirstView({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      largeScreen: LargeChild(),
      smallScreen: SmallChild(),
    );
  }
}
