import 'package:flutter/material.dart';
import 'package:vaco_website/theme/colors.dart';
import 'package:vaco_website/theme/text_styles.dart';
import 'package:vaco_website/widgets/desktop_appbar.dart';
import 'package:vaco_website/widgets/mobile_appbar.dart';
import 'package:vaco_website/widgets/persistent_footer_buttons.dart';

class PricingScreen extends StatelessWidget {
  const PricingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: Scaffold(
        backgroundColor: VacoColors.vacoBackground,
        appBar: MediaQuery.of(context).size.width > 1023 ? DesktopAppbar() : MobileAppbar(),
        persistentFooterAlignment: AlignmentDirectional.centerStart,
        persistentFooterButtons: VacoPersistentFooterButtons.getPersistentFooterButtons(context),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "£2.49 / User / Month",
                style: VacoTextStyles.vacoHeaderLarge,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16.0),
              Text("It's that simple", style: VacoTextStyles.vacoBody),
            ],
          ),
        ),
      ),
    );
  }
}
