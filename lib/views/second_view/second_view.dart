import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webapp/svg_icons.dart';
import 'package:webapp/utils/responsiveLayout.dart';
import 'package:webapp/widgets/styled_button.dart';
import 'package:webapp/widgets/subtitle.dart';
import 'package:webapp/widgets/title.dart';

part 'large.dart';
part 'small.dart';

class SecondView extends StatelessWidget {
  const SecondView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      largeScreen: LargeChild(),
      smallScreen: SmallChild(),
    );
  }
}
