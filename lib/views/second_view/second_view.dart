import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:landing_anna/svg_icons.dart';
import 'package:landing_anna/utils/responsive_layout.dart';
import 'package:landing_anna/widgets/styled_button.dart';
import 'package:landing_anna/widgets/subtitle.dart';
import 'package:landing_anna/widgets/title.dart';
import 'package:url_launcher/url_launcher.dart';

part 'large.dart';
part 'small.dart';

class SecondView extends StatelessWidget {
  const SecondView({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      largeScreen: LargeChild(),
      smallScreen: SmallChild(),
    );
  }
}
